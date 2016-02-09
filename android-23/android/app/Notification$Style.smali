.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field protected mSummaryText:Ljava/lang/CharSequence;

.field protected mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 3716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 3722
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@6
    .line 3727
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@9
    .line 3716
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3816
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3817
    const-string/jumbo v0, "android.summaryText"

    #@7
    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@c
    .line 3819
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 3820
    const-string/jumbo v0, "android.title.big"

    #@13
    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@18
    .line 3822
    :cond_1
    const-string/jumbo v0, "android.template"

    #@1b
    invoke-virtual {p0}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    .line 3815
    return-void
.end method

.method protected applyTopPadding(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3806
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@3
    invoke-static {v0}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    .line 3807
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@9
    invoke-static {v1}, Landroid/app/Notification$Builder;->-get4(Landroid/app/Notification$Builder;)Z

    #@c
    move-result v1

    #@d
    .line 3808
    iget-object v4, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@1a
    move-result-object v4

    #@1b
    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    #@1d
    .line 3806
    invoke-static {v0, v1, v4}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    #@20
    move-result v3

    #@21
    .line 3809
    .local v3, "topPadding":I
    const v1, 0x102037c

    #@24
    move-object v0, p1

    #@25
    move v4, v2

    #@26
    move v5, v2

    #@27
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@2a
    .line 3805
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 3882
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    #@3
    .line 3883
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3843
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateTickerView(Landroid/app/Notification;)V

    #@3
    .line 3844
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    #@6
    .line 3845
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    #@9
    .line 3846
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    #@c
    .line 3847
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    #@0
    .prologue
    .line 3757
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Style requires a valid Builder object"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 3756
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 9
    .param p1, "layoutId"    # I

    #@0
    .prologue
    const v8, 0x1020371

    #@3
    const v7, 0x1020075

    #@6
    const/16 v6, 0x8

    #@8
    const/4 v5, 0x0

    #@9
    .line 3763
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    #@c
    .line 3766
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@e
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@11
    move-result-object v1

    #@12
    .line 3767
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@14
    if-eqz v3, :cond_0

    #@16
    .line 3768
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@18
    iget-object v4, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@1a
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1d
    .line 3771
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@1f
    invoke-static {v3, p1}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    #@22
    move-result-object v0

    #@23
    .line 3773
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@25
    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->-set1(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@28
    .line 3775
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@2a
    if-eqz v3, :cond_1

    #@2c
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@2e
    const-string/jumbo v4, ""

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v3

    #@35
    if-eqz v3, :cond_1

    #@37
    .line 3776
    const v3, 0x102037c

    #@3a
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@3d
    .line 3783
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@3f
    if-eqz v3, :cond_2

    #@41
    iget-object v2, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@43
    .line 3785
    .local v2, "overflowText":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_3

    #@45
    .line 3786
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@47
    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@4e
    .line 3787
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@51
    .line 3788
    const v3, 0x102037e

    #@54
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@57
    .line 3796
    :goto_2
    return-object v0

    #@58
    .line 3778
    .end local v2    # "overflowText":Ljava/lang/CharSequence;
    :cond_1
    const v3, 0x102037c

    #@5b
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@5e
    goto :goto_0

    #@5f
    .line 3784
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@61
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@64
    move-result-object v2

    #@65
    .restart local v2    # "overflowText":Ljava/lang/CharSequence;
    goto :goto_1

    #@66
    .line 3791
    :cond_3
    const-string/jumbo v3, ""

    #@69
    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@6c
    .line 3792
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@6f
    .line 3793
    const v3, 0x102037e

    #@72
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@75
    goto :goto_2
.end method

.method protected hasProgress()Z
    .locals 1

    #@0
    .prologue
    .line 3892
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3736
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@2
    .line 3735
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3743
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@2
    .line 3744
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@5
    .line 3742
    return-void
.end method

.method protected populateBigContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3868
    return-void
.end method

.method protected populateContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3863
    return-void
.end method

.method protected populateHeadsUpContentView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3873
    return-void
.end method

.method protected populateTickerView(Landroid/app/Notification;)V
    .locals 0
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3859
    return-void
.end method

.method public purgeResources()V
    .locals 0

    #@0
    .prologue
    .line 3853
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3829
    const-string/jumbo v0, "android.summaryText"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3830
    const-string/jumbo v0, "android.summaryText"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@12
    .line 3831
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@15
    .line 3833
    :cond_0
    const-string/jumbo v0, "android.title.big"

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 3834
    const-string/jumbo v0, "android.title.big"

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@27
    .line 3828
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 3748
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3749
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    .line 3750
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 3751
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@f
    .line 3747
    :cond_0
    return-void
.end method
