.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final greylist-max-o MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private greylist-max-o mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mBigLargeIconSet:Z

.field private blacklist mPictureContentDescription:Ljava/lang/CharSequence;

.field private blacklist mPictureIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShowBigPictureWhenCollapsed:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 8536
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 8537
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8543
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8532
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 8544
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 8545
    return-void
.end method

.method public static blacklist getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 8811
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 8815
    :cond_4
    const-string v0, "android.picture"

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 8816
    .local v0, "bitmapPicture":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_15

    .line 8817
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 8819
    :cond_15
    const-string v1, "android.pictureIcon"

    const-class v2, Landroid/graphics/drawable/Icon;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    return-object v1
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8759
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8761
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_e

    .line 8762
    const-string v0, "android.largeIcon.big"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8764
    :cond_e
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    .line 8765
    const-string v0, "android.pictureContentDescription"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8768
    :cond_19
    const-string v0, "android.showBigPictureWhenCollapsed"

    iget-boolean v1, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8770
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.picture"

    const-string v2, "android.pictureIcon"

    if-nez v0, :cond_2f

    .line 8771
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8772
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_4e

    .line 8773
    :cond_2f
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_46

    .line 8778
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8779
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_4e

    .line 8781
    :cond_46
    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8782
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8784
    :goto_4e
    return-void
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 5
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 8836
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_1d

    .line 8839
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/app/Notification$BigPictureStyle;

    .line 8840
    .local v0, "otherS":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual {p0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification;->-$$Nest$smareIconsMaybeDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    return v1

    .line 8837
    .end local v0    # "otherS":Landroid/app/Notification$BigPictureStyle;
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 8621
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 8629
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 8630
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 8631
    return-object p0
.end method

.method public whitelist bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 8592
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 8593
    return-object p0
.end method

.method public whitelist bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 8601
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 8602
    return-object p0
.end method

.method public blacklist getBigPicture()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 8581
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_7

    .line 8582
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    .line 8584
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hasSummaryInHeader()Z
    .registers 2

    .line 8828
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 8681
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_9

    goto :goto_2f

    .line 8685
    :cond_9
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 8686
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8687
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 8688
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 8689
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8682
    .end local v0    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_2f
    :goto_2f
    invoke-super {p0}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 8

    .line 8717
    const/4 v0, 0x0

    .line 8718
    .local v0, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x0

    .line 8719
    .local v1, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    .line 8720
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 8721
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v4}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 8725
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8726
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iput-object v3, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8729
    :cond_2c
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v4, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 8730
    invoke-virtual {v2, v4}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v4}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 8731
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigPictureLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    invoke-virtual {p0, v4, v2, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 8733
    .local v3, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v4, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v4, :cond_6b

    .line 8734
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 8736
    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 8735
    invoke-virtual {v4, v5, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 8734
    const v5, 0x1020574

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8737
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v3, v5, v2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 8738
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8741
    :cond_6b
    iget-boolean v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v4, :cond_80

    .line 8742
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 8743
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iput-object v1, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 8746
    :cond_80
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020246

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 8748
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_91

    .line 8749
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 8752
    :cond_91
    return-object v3
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 8697
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_9

    goto :goto_2f

    .line 8701
    :cond_9
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 8702
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8703
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 8704
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 8705
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 8698
    .end local v0    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_2f
    :goto_2f
    invoke-super {p0}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o purgeResources()V
    .registers 2

    .line 8642
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 8643
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_c

    .line 8644
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 8646
    :cond_c
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_15

    .line 8647
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 8649
    :cond_15
    return-void
.end method

.method public greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 8656
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 8657
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8658
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 8659
    .local v1, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_2e

    .line 8660
    if-eqz v1, :cond_15

    .line 8661
    const v2, 0x10502a1

    goto :goto_18

    .line 8662
    :cond_15
    const v2, 0x10502a0

    .line 8660
    :goto_18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8663
    .local v2, "maxPictureHeight":I
    if-eqz v1, :cond_22

    .line 8664
    const v3, 0x10502a3

    goto :goto_25

    .line 8665
    :cond_22
    const v3, 0x10502a2

    .line 8663
    :goto_25
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 8666
    .local v3, "maxPictureWidth":I
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v3, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8668
    .end local v2    # "maxPictureHeight":I
    .end local v3    # "maxPictureWidth":I
    :cond_2e
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_44

    .line 8669
    if-eqz v1, :cond_38

    .line 8670
    const v2, 0x10502e6

    goto :goto_3b

    .line 8671
    :cond_38
    const v2, 0x10502e5

    .line 8669
    :goto_3b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8672
    .local v2, "rightIconSize":I
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8674
    .end local v2    # "rightIconSize":I
    :cond_44
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8791
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 8793
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8794
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 8795
    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 8798
    :cond_18
    const-string v0, "android.pictureContentDescription"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 8799
    nop

    .line 8800
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    .line 8803
    :cond_27
    const-string v0, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    .line 8805
    invoke-static {p1}, Landroid/app/Notification$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 8806
    return-void
.end method

.method public whitelist setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 8553
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 8554
    return-object p0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 8572
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    .line 8573
    return-object p0
.end method

.method public whitelist setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 8562
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 8563
    return-object p0
.end method

.method public whitelist showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "show"    # Z

    .line 8612
    iput-boolean p1, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    .line 8613
    return-object p0
.end method
