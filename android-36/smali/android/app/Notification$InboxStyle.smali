.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# static fields
.field private static final greylist-max-o NUMBER_OF_HISTORY_ALLOWED_UNTIL_REDUCTION:I = 0x1


# instance fields
.field private greylist-max-o mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 10317
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 10318
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10324
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 10315
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 10325
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 10326
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10364
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 10366
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 10367
    .local v0, "a":[Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const-string v2, "android.textLines"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 10368
    return-void
.end method

.method public whitelist addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 10349
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10350
    return-object p0
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 10
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10466
    const/4 v0, 0x1

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_44

    .line 10469
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$InboxStyle;

    .line 10471
    .local v1, "newS":Landroid/app/Notification$InboxStyle;
    invoke-virtual {p0}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v2

    .line 10472
    .local v2, "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v3

    .line 10473
    .local v3, "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 10474
    .local v4, "n":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_24

    .line 10475
    return v0

    .line 10478
    :cond_24
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_42

    .line 10479
    nop

    .line 10480
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 10481
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 10479
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 10482
    return v0

    .line 10478
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 10485
    .end local v5    # "i":I
    :cond_42
    const/4 v0, 0x0

    return v0

    .line 10467
    .end local v1    # "newS":Landroid/app/Notification$InboxStyle;
    .end local v2    # "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "n":I
    :cond_44
    :goto_44
    return v0
.end method

.method public greylist-max-o getLines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 10357
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 18

    .line 10387
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 10388
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10389
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 10390
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v3, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 10391
    .local v3, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$mgetInboxLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/Notification$InboxStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 10393
    .local v4, "contentView":Landroid/widget/RemoteViews;
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_112

    .line 10397
    .local v2, "rowIds":[I
    array-length v5, v2

    const/4 v10, 0x0

    move v6, v10

    :goto_33
    if-ge v6, v5, :cond_3f

    aget v7, v2, v6

    .line 10398
    .local v7, "rowId":I
    const/16 v8, 0x8

    invoke-virtual {v4, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10397
    .end local v7    # "rowId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 10401
    :cond_3f
    const/4 v5, 0x0

    .line 10402
    .local v5, "i":I
    iget-object v6, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10502ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 10404
    .local v7, "topPadding":I
    const/4 v6, 0x1

    .line 10405
    .local v6, "first":Z
    const/4 v8, 0x0

    .line 10406
    .local v8, "onlyViewId":I
    array-length v9, v2

    .line 10407
    .local v9, "maxRows":I
    iget-object v11, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_62

    .line 10408
    add-int/lit8 v9, v9, -0x1

    .line 10410
    :cond_62
    iget-object v11, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.remoteInputHistoryItems"

    const-class v13, Landroid/app/RemoteInputHistoryItem;

    invoke-static {v11, v12, v13}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, [Landroid/app/RemoteInputHistoryItem;

    .line 10413
    .local v11, "remoteInputHistory":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v11, :cond_a0

    array-length v12, v11

    const/4 v13, 0x1

    if-le v12, v13, :cond_a0

    .line 10417
    array-length v12, v11

    const/4 v14, 0x3

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 10419
    .local v12, "numRemoteInputs":I
    iget-object v14, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v12

    sub-int/2addr v14, v13

    .line 10421
    .local v14, "totalNumRows":I
    if-le v14, v9, :cond_a0

    .line 10422
    sub-int v13, v14, v9

    .line 10423
    .local v13, "overflow":I
    iget-object v15, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v9, :cond_9a

    .line 10426
    sub-int/2addr v9, v13

    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    goto :goto_a4

    .line 10429
    :cond_9a
    move v5, v13

    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    goto :goto_a4

    .line 10433
    .end local v12    # "numRemoteInputs":I
    .end local v13    # "overflow":I
    .end local v14    # "totalNumRows":I
    :cond_a0
    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    .end local v5    # "i":I
    .end local v6    # "first":Z
    .end local v8    # "onlyViewId":I
    .end local v9    # "maxRows":I
    .local v12, "i":I
    .local v13, "first":Z
    .local v14, "onlyViewId":I
    .local v15, "maxRows":I
    :goto_a4
    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v12, v5, :cond_f4

    if-ge v12, v15, :cond_f4

    .line 10434
    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 10435
    .local v5, "str":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ee

    .line 10436
    aget v6, v2, v12

    invoke-virtual {v4, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10437
    aget v6, v2, v12

    iget-object v8, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v9, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10439
    invoke-static {v9, v5}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 10438
    invoke-virtual {v8, v9, v1}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 10437
    invoke-virtual {v4, v6, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 10440
    iget-object v6, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    aget v8, v2, v12

    invoke-static {v6, v4, v8, v1}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 10441
    move-object v6, v5

    .end local v5    # "str":Ljava/lang/CharSequence;
    .local v6, "str":Ljava/lang/CharSequence;
    aget v5, v2, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v16, v6

    .end local v6    # "str":Ljava/lang/CharSequence;
    .local v16, "str":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 10442
    if-eqz v13, :cond_e9

    .line 10443
    aget v5, v2, v12

    .end local v14    # "onlyViewId":I
    .local v5, "onlyViewId":I
    goto :goto_ea

    .line 10445
    .end local v5    # "onlyViewId":I
    .restart local v14    # "onlyViewId":I
    :cond_e9
    const/4 v5, 0x0

    .line 10447
    .end local v14    # "onlyViewId":I
    .restart local v5    # "onlyViewId":I
    :goto_ea
    const/4 v6, 0x0

    move v14, v5

    move v13, v6

    .end local v13    # "first":Z
    .local v6, "first":Z
    goto :goto_f0

    .line 10435
    .end local v6    # "first":Z
    .end local v16    # "str":Ljava/lang/CharSequence;
    .local v5, "str":Ljava/lang/CharSequence;
    .restart local v13    # "first":Z
    .restart local v14    # "onlyViewId":I
    :cond_ee
    move-object/from16 v16, v5

    .line 10449
    .end local v5    # "str":Ljava/lang/CharSequence;
    .restart local v16    # "str":Ljava/lang/CharSequence;
    :goto_f0
    nop

    .end local v16    # "str":Ljava/lang/CharSequence;
    add-int/lit8 v12, v12, 0x1

    .line 10450
    goto :goto_a4

    .line 10451
    :cond_f4
    if-eqz v14, :cond_10f

    .line 10453
    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 10455
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move v5, v14

    .end local v14    # "onlyViewId":I
    .local v5, "onlyViewId":I
    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    goto :goto_110

    .line 10451
    .end local v5    # "onlyViewId":I
    .restart local v14    # "onlyViewId":I
    :cond_10f
    move v5, v14

    .line 10458
    .end local v14    # "onlyViewId":I
    .restart local v5    # "onlyViewId":I
    :goto_110
    return-object v4

    nop

    :array_112
    .array-data 4
        0x1020373
        0x1020374
        0x1020375
        0x1020376
        0x1020377
        0x1020378
        0x1020379
    .end array-data
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10375
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 10377
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10378
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 10379
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 10381
    :cond_19
    return-void
.end method

.method public whitelist setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 10333
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 10334
    return-object p0
.end method

.method public whitelist setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 10341
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 10342
    return-object p0
.end method
