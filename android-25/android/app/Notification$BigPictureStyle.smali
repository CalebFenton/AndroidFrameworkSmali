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
.field public static final MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4348
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4346
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@6
    .line 4348
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4355
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4346
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@6
    .line 4356
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@9
    .line 4355
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4460
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4462
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4463
    const-string/jumbo v0, "android.largeIcon.big"

    #@a
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 4465
    :cond_0
    const-string/jumbo v0, "android.picture"

    #@12
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@17
    .line 4459
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4388
    if-eqz p1, :cond_0

    #@3
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@6
    move-result-object v0

    #@7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 4395
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@3
    .line 4396
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@5
    .line 4397
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 4380
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@2
    .line 4381
    return-object p0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    #@0
    .prologue
    .line 4487
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    #@0
    .prologue
    const v5, 0x102007e

    #@3
    .line 4428
    const/4 v2, 0x0

    #@4
    .line 4429
    .local v2, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x0

    #@5
    .line 4430
    .local v1, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 4431
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@b
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@e
    move-result-object v3

    #@f
    invoke-static {v3}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@12
    move-result-object v2

    #@13
    .line 4432
    .local v2, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@15
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@18
    move-result-object v3

    #@19
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@1b
    invoke-static {v3, v4}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@1e
    .line 4436
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@20
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@23
    move-result-object v3

    #@24
    iget-object v1, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@26
    .line 4437
    .local v1, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@28
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@2b
    move-result-object v3

    #@2c
    const/4 v4, 0x0

    #@2d
    iput-object v4, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@2f
    .line 4440
    .end local v1    # "largeIconLegacy":Landroid/graphics/Bitmap;
    .end local v2    # "oldLargeIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@31
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;)I

    #@34
    move-result v3

    #@35
    invoke-virtual {p0, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@38
    move-result-object v0

    #@39
    .line 4441
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 4442
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@3f
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    #@41
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@48
    .line 4443
    const/4 v3, 0x0

    #@49
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@4c
    .line 4445
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4e
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@50
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@53
    move-result-object v4

    #@54
    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@57
    move-result v4

    #@58
    invoke-virtual {v3, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    #@5b
    .line 4447
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@5d
    if-eqz v3, :cond_2

    #@5f
    .line 4448
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@61
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@64
    move-result-object v3

    #@65
    invoke-static {v3, v2}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@68
    .line 4449
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6a
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@6d
    move-result-object v3

    #@6e
    iput-object v1, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@70
    .line 4452
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@72
    const v4, 0x10203bb

    #@75
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@78
    .line 4453
    return-object v0
.end method

.method public purgeResources()V
    .locals 2

    #@0
    .prologue
    .line 4408
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    #@3
    .line 4409
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4410
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@c
    move-result v0

    #@d
    .line 4409
    if-eqz v0, :cond_0

    #@f
    .line 4411
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    #@14
    move-result v0

    #@15
    const/high16 v1, 0x20000

    #@17
    if-lt v0, v1, :cond_0

    #@19
    .line 4412
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@1b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@21
    .line 4414
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 4415
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@27
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    #@2a
    .line 4407
    :cond_1
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4473
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4475
    const-string/jumbo v0, "android.largeIcon.big"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4476
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@f
    .line 4477
    const-string/jumbo v0, "android.largeIcon.big"

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/graphics/drawable/Icon;

    #@18
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@1a
    .line 4479
    :cond_0
    const-string/jumbo v0, "android.picture"

    #@1d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/graphics/Bitmap;

    #@23
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@25
    .line 4472
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4364
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 4365
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4372
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 4373
    return-object p0
.end method
