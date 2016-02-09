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


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3918
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 3916
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@6
    .line 3918
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 3921
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 3916
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@6
    .line 3922
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@9
    .line 3921
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    #@0
    .prologue
    .line 3986
    const/4 v1, 0x0

    #@1
    .line 3987
    .local v1, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 3988
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@7
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get5(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;

    #@a
    move-result-object v1

    #@b
    .line 3989
    .local v1, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@d
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@f
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->-set3(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@12
    .line 3992
    .end local v1    # "oldLargeIcon":Landroid/graphics/drawable/Icon;
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@14
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap4(Landroid/app/Notification$Builder;)I

    #@17
    move-result v3

    #@18
    invoke-virtual {p0, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@1b
    move-result-object v0

    #@1c
    .line 3994
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 3995
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@22
    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->-set3(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@25
    .line 3998
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@27
    const v4, 0x1020370

    #@2a
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@2d
    .line 4000
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    #@30
    .line 4002
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@32
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@35
    move-result-object v3

    #@36
    if-eqz v3, :cond_2

    #@38
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@3a
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@3d
    move-result-object v3

    #@3e
    if-eqz v3, :cond_2

    #@40
    const/4 v2, 0x1

    #@41
    .line 4003
    .local v2, "twoTextLines":Z
    :goto_0
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@43
    .line 4004
    if-eqz v2, :cond_3

    #@45
    const v3, 0x102037d

    #@48
    .line 4003
    :goto_1
    invoke-static {v4, v0, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    #@4b
    .line 4005
    return-object v0

    #@4c
    .line 4002
    .end local v2    # "twoTextLines":Z
    :cond_2
    const/4 v2, 0x0

    #@4d
    .restart local v2    # "twoTextLines":Z
    goto :goto_0

    #@4e
    .line 4004
    :cond_3
    const v3, 0x1020380

    #@51
    goto :goto_1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4012
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4014
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4015
    const-string/jumbo v0, "android.largeIcon.big"

    #@a
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 4017
    :cond_0
    const-string/jumbo v0, "android.picture"

    #@12
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@17
    .line 4011
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3954
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
    .line 3961
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@3
    .line 3962
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@5
    .line 3963
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 3946
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@2
    .line 3947
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4039
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9
    .line 4038
    return-void
.end method

.method public purgeResources()V
    .locals 1

    #@0
    .prologue
    .line 3971
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    #@3
    .line 3972
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 3973
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    #@17
    .line 3975
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 3976
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    #@1d
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    #@20
    .line 3970
    :cond_1
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4025
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4027
    const-string/jumbo v0, "android.largeIcon.big"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 4028
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    #@f
    .line 4029
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
    .line 4031
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
    .line 4024
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3930
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 3931
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3938
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 3939
    return-object p0
.end method
