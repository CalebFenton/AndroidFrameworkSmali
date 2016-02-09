.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x3

.field private static final LINES_CONSUMED_BY_SUMMARY:I = 0x2

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4068
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 4071
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4072
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@6
    .line 4071
    return-void
.end method

.method private calculateMaxLines()I
    .locals 4

    #@0
    .prologue
    .line 4145
    const/16 v2, 0xd

    #@2
    .line 4146
    .local v2, "lineCount":I
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-lez v3, :cond_3

    #@e
    const/4 v0, 0x1

    #@f
    .line 4147
    .local v0, "hasActions":Z
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$BigTextStyle;->mSummaryTextSet:Z

    #@11
    if-eqz v3, :cond_4

    #@13
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    #@15
    :goto_1
    if-eqz v3, :cond_5

    #@17
    const/4 v1, 0x1

    #@18
    .line 4148
    .local v1, "hasSummary":Z
    :goto_2
    if-eqz v0, :cond_0

    #@1a
    .line 4149
    const/16 v2, 0xa

    #@1c
    .line 4151
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 4152
    add-int/lit8 v2, v2, -0x2

    #@20
    .line 4156
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@22
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get4(Landroid/app/Notification$Builder;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    .line 4157
    add-int/lit8 v2, v2, -0x1

    #@2a
    .line 4159
    :cond_2
    return v2

    #@2b
    .line 4146
    .end local v0    # "hasActions":Z
    .end local v1    # "hasSummary":Z
    :cond_3
    const/4 v0, 0x0

    #@2c
    .restart local v0    # "hasActions":Z
    goto :goto_0

    #@2d
    .line 4147
    :cond_4
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2f
    invoke-static {v3}, Landroid/app/Notification$Builder;->-get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@32
    move-result-object v3

    #@33
    goto :goto_1

    #@34
    :cond_5
    const/4 v1, 0x0

    #@35
    .restart local v1    # "hasSummary":Z
    goto :goto_2
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    #@0
    .prologue
    const v4, 0x102036c

    #@3
    .line 4123
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@5
    invoke-static {v2}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    .line 4124
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@f
    .line 4126
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@11
    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap5(Landroid/app/Notification$Builder;)I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0, v2}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@18
    move-result-object v0

    #@19
    .line 4128
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1b
    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    .line 4130
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@20
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@22
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@29
    .line 4131
    const/4 v2, 0x0

    #@2a
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@2d
    .line 4132
    const-string/jumbo v2, "setMaxLines"

    #@30
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines()I

    #@33
    move-result v3

    #@34
    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@37
    .line 4133
    const v2, 0x1020015

    #@3a
    const/16 v3, 0x8

    #@3c
    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@3f
    .line 4135
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    #@42
    .line 4137
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@44
    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    #@47
    .line 4139
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@49
    const v3, 0x102036d

    #@4c
    invoke-static {v2, v0, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    #@4f
    .line 4141
    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4105
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4107
    const-string/jumbo v0, "android.bigText"

    #@6
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@b
    .line 4104
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4097
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@6
    .line 4098
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4167
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9
    .line 4166
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4115
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4117
    const-string/jumbo v0, "android.bigText"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@c
    .line 4114
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4080
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 4081
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4088
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 4089
    return-object p0
.end method
