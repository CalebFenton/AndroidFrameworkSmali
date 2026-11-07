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
.field static final greylist-max-o MAX_MEDIA_BUTTONS:I = 0x5

.field static final greylist-max-o MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3

.field private static final blacklist MEDIA_BUTTON_IDS:[I


# instance fields
.field private greylist-max-o mActionsToShowInCompact:[I

.field private blacklist mDeviceIcon:I

.field private blacklist mDeviceIntent:Landroid/app/PendingIntent;

.field private blacklist mDeviceName:Ljava/lang/CharSequence;

.field private greylist-max-o mToken:Landroid/media/session/MediaSession$Token;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 10546
    const v0, 0x10201d9

    const v1, 0x10201da

    const v2, 0x10201d6

    const v3, 0x10201d7

    const v4, 0x10201d8

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 10560
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10554
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 10561
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10567
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10554
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 10568
    invoke-virtual {p0, p1}, Landroid/app/Notification$MediaStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 10569
    return-void
.end method

.method private blacklist bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 11
    .param p1, "container"    # Landroid/widget/RemoteViews;
    .param p2, "buttonId"    # I
    .param p3, "action"    # Landroid/app/Notification$Action;
    .param p4, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 10716
    iget-object v0, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 10717
    .local v0, "tombstone":Z
    :goto_8
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10718
    invoke-virtual {p3}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 10722
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p4}, Landroid/app/Notification$Builder;->-$$Nest$mgetStandardActionColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    .line 10724
    .local v2, "tintColor":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 10727
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1, p4}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getRippleAlpha()I

    move-result v1

    .line 10728
    .local v1, "rippleAlpha":I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 10729
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 10728
    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 10730
    .local v3, "rippleColor":I
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setRippleDrawableColor(ILandroid/content/res/ColorStateList;)V

    .line 10732
    if-nez v0, :cond_45

    .line 10733
    iget-object v4, p3, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 10735
    :cond_45
    iget-object v4, p3, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 10736
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10658
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 10660
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    if-eqz v0, :cond_e

    .line 10661
    const-string v0, "android.mediaSession"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10663
    :cond_e
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    if-eqz v0, :cond_19

    .line 10664
    const-string v0, "android.compactActions"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 10666
    :cond_19
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_24

    .line 10667
    const-string v0, "android.mediaRemoteDevice"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10669
    :cond_24
    iget v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    if-lez v0, :cond_2f

    .line 10670
    const-string v0, "android.mediaRemoteIcon"

    iget v1, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10672
    :cond_2f
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3a

    .line 10673
    const-string v0, "android.mediaRemoteIntent"

    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10675
    :cond_3a
    return-void
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10707
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_f

    .line 10711
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 10708
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method public greylist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 3
    .param p1, "wip"    # Landroid/app/Notification;

    .line 10624
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 10625
    iget-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 10626
    const-string/jumbo v0, "transport"

    iput-object v0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 10628
    :cond_c
    return-object p1
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 10636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 10644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 10652
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$MediaStyle;->makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist makeMediaContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 13
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 10740
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 10741
    .local v0, "numActions":I
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 10742
    move v1, v2

    goto :goto_14

    :cond_11
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    array-length v1, v1

    .line 10741
    :goto_14
    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10743
    .local v1, "numActionsToShow":I
    if-gt v1, v0, :cond_a6

    .line 10749
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, v4, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v4}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 10750
    invoke-virtual {v4, v5}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    const/4 v5, 0x1

    if-le v1, v5, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v2

    .line 10751
    :goto_2f
    invoke-virtual {v4, v6}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    if-le v1, v5, :cond_37

    move v6, v5

    goto :goto_38

    :cond_37
    move v6, v2

    .line 10752
    :goto_38
    invoke-virtual {v4, v6}, Landroid/app/Notification$StandardTemplateParams;->hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 10753
    invoke-virtual {v4, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    if-lez v1, :cond_44

    move v6, v5

    goto :goto_45

    :cond_44
    move v6, v2

    .line 10754
    :goto_45
    invoke-virtual {v4, v6}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 10755
    invoke-virtual {v4, v5}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    iget-object v6, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10756
    invoke-virtual {v4, v6}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 10757
    .local v4, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v6, Landroid/app/Notification$TemplateBindResult;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 10758
    .local v6, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v8, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10759
    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMediaLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v9

    .line 10758
    invoke-static {v8, v9, v4, v7}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 10762
    .local v7, "template":Landroid/widget/RemoteViews;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_66
    const/16 v9, 0x8

    if-ge v8, v3, :cond_8e

    .line 10763
    if-ge v8, v1, :cond_84

    .line 10764
    iget-object v9, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v9}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    aget v10, v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 10765
    .local v9, "action":Landroid/app/Notification$Action;
    sget-object v10, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v10, v10, v8

    invoke-direct {p0, v7, v10, v9, v4}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    .line 10766
    .end local v9    # "action":Landroid/app/Notification$Action;
    goto :goto_8b

    .line 10767
    :cond_84
    sget-object v10, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v10, v10, v8

    invoke-virtual {v7, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10762
    :goto_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 10771
    .end local v8    # "i":I
    :cond_8e
    if-eqz v1, :cond_91

    goto :goto_92

    :cond_91
    move v5, v2

    .line 10772
    .local v5, "hasActions":Z
    :goto_92
    if-eqz v5, :cond_95

    goto :goto_96

    :cond_95
    move v2, v9

    :goto_96
    const v3, 0x10203df

    invoke-virtual {v7, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10775
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v7, p1, v4, v6}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 10776
    return-object v7

    .line 10744
    .end local v4    # "p":Landroid/app/Notification$StandardTemplateParams;
    .end local v5    # "hasActions":Z
    .end local v6    # "result":Landroid/app/Notification$TemplateBindResult;
    .end local v7    # "template":Landroid/widget/RemoteViews;
    :cond_a6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 10746
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 10744
    const-string/jumbo v4, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected blacklist makeMediaExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 10
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 10781
    iget-object v0, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 10782
    .local v0, "actionCount":I
    iget-object v2, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 10783
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 10784
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10785
    invoke-virtual {v2, v3}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 10786
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 10787
    .local v3, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v4, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10788
    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMediaLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v5

    .line 10787
    invoke-static {v4, v5, v2, v3}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 10790
    .local v4, "template":Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    if-ge v5, v1, :cond_5f

    .line 10791
    if-ge v5, v0, :cond_53

    .line 10792
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    iget-object v7, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v7

    .line 10793
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 10792
    invoke-direct {p0, v4, v6, v7, v2}, Landroid/app/Notification$MediaStyle;->bindMediaActionButton(Landroid/widget/RemoteViews;ILandroid/app/Notification$Action;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_5c

    .line 10795
    :cond_53
    sget-object v6, Landroid/app/Notification$MediaStyle;->MEDIA_BUTTON_IDS:[I

    aget v6, v6, v5

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10790
    :goto_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 10798
    .end local v5    # "i":I
    :cond_5f
    iget-object v1, p0, Landroid/app/Notification$MediaStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, p1, v2, v3}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 10799
    return-object v4
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10682
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 10684
    const-string v0, "android.mediaSession"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 10685
    const-class v1, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 10687
    :cond_15
    const-string v0, "android.compactActions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 10688
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 10690
    :cond_23
    const-string v0, "android.mediaRemoteDevice"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 10691
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    .line 10693
    :cond_31
    const-string v0, "android.mediaRemoteIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 10694
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    .line 10696
    :cond_3f
    const-string v0, "android.mediaRemoteIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 10697
    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    .line 10700
    :cond_51
    return-void
.end method

.method public whitelist setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
    .registers 2
    .param p1, "token"    # Landroid/media/session/MediaSession$Token;

    .line 10587
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mToken:Landroid/media/session/MediaSession$Token;

    .line 10588
    return-object p0
.end method

.method public whitelist setRemotePlaybackInfo(Ljava/lang/CharSequence;ILandroid/app/PendingIntent;)Landroid/app/Notification$MediaStyle;
    .registers 4
    .param p1, "deviceName"    # Ljava/lang/CharSequence;
    .param p2, "iconResource"    # I
    .param p3, "chipIntent"    # Landroid/app/PendingIntent;

    .line 10612
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mDeviceName:Ljava/lang/CharSequence;

    .line 10613
    iput p2, p0, Landroid/app/Notification$MediaStyle;->mDeviceIcon:I

    .line 10614
    iput-object p3, p0, Landroid/app/Notification$MediaStyle;->mDeviceIntent:Landroid/app/PendingIntent;

    .line 10615
    return-object p0
.end method

.method public varargs whitelist setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
    .registers 2
    .param p1, "actions"    # [I

    .line 10578
    iput-object p1, p0, Landroid/app/Notification$MediaStyle;->mActionsToShowInCompact:[I

    .line 10579
    return-object p0
.end method
