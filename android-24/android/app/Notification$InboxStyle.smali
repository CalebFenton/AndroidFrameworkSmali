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


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 4953
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4951
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@b
    .line 4953
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4960
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4951
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@b
    .line 4961
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@e
    .line 4960
    return-void
.end method

.method private handleInboxImageMargin(Landroid/widget/RemoteViews;IZ)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "first"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5069
    const/4 v0, 0x0

    #@2
    .line 5070
    .local v0, "endMargin":I
    if-eqz p3, :cond_0

    #@4
    .line 5071
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@9
    move-result-object v4

    #@a
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@c
    const-string/jumbo v5, "android.progressMax"

    #@f
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@12
    move-result v3

    #@13
    .line 5072
    .local v3, "max":I
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@15
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@18
    move-result-object v4

    #@19
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@1b
    const-string/jumbo v5, "android.progressIndeterminate"

    #@1e
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@21
    move-result v2

    #@22
    .line 5073
    .local v2, "ind":Z
    if-nez v3, :cond_1

    #@24
    move v1, v2

    #@25
    .line 5074
    :goto_0
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@27
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@2e
    move-result v4

    #@2f
    if-eqz v4, :cond_0

    #@31
    if-eqz v1, :cond_2

    #@33
    .line 5078
    .end local v2    # "ind":Z
    .end local v3    # "max":I
    :cond_0
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@36
    .line 5068
    return-void

    #@37
    .line 5073
    .restart local v2    # "ind":Z
    .restart local v3    # "max":I
    :cond_1
    const/4 v1, 0x1

    #@38
    .local v1, "hasProgress":Z
    goto :goto_0

    #@39
    .line 5075
    .end local v1    # "hasProgress":Z
    :cond_2
    const v0, 0x1050041

    #@3c
    goto :goto_1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4993
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4995
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Ljava/lang/CharSequence;

    #@b
    .line 4996
    .local v0, "a":[Ljava/lang/CharSequence;
    const-string/jumbo v2, "android.textLines"

    #@e
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, [Ljava/lang/CharSequence;

    #@16
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@19
    .line 4992
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4985
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 4986
    return-object p0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 14

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5018
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@3
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@6
    move-result-object v4

    #@7
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@9
    const-string/jumbo v5, "android.text"

    #@c
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@f
    move-result-object v9

    #@10
    .line 5019
    .local v9, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@12
    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@15
    move-result-object v4

    #@16
    const-string/jumbo v5, "android.text"

    #@19
    const/4 v13, 0x0

    #@1a
    invoke-virtual {v4, v5, v13}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1d
    .line 5021
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1f
    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;)I

    #@22
    move-result v4

    #@23
    invoke-virtual {p0, v4}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@26
    move-result-object v0

    #@27
    .line 5023
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@29
    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@2c
    move-result-object v4

    #@2d
    const-string/jumbo v5, "android.text"

    #@30
    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@33
    .line 5025
    const/4 v4, 0x7

    #@34
    new-array v11, v4, [I

    #@36
    .local v11, "rowIds":[I
    fill-array-data v11, :array_0

    #@39
    .line 5029
    array-length v5, v11

    #@3a
    move v4, v2

    #@3b
    :goto_0
    if-ge v4, v5, :cond_0

    #@3d
    aget v10, v11, v4

    #@3f
    .line 5030
    .local v10, "rowId":I
    const/16 v13, 0x8

    #@41
    invoke-virtual {v0, v10, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@44
    .line 5029
    add-int/lit8 v4, v4, 0x1

    #@46
    goto :goto_0

    #@47
    .line 5033
    .end local v10    # "rowId":I
    :cond_0
    const/4 v7, 0x0

    #@48
    .line 5034
    .local v7, "i":I
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4a
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@51
    move-result-object v4

    #@52
    .line 5035
    const v5, 0x1050078

    #@55
    .line 5034
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@58
    move-result v3

    #@59
    .line 5036
    .local v3, "topPadding":I
    const/4 v6, 0x1

    #@5a
    .line 5037
    .local v6, "first":Z
    const/4 v1, 0x0

    #@5b
    .line 5038
    .local v1, "onlyViewId":I
    array-length v8, v11

    #@5c
    .line 5039
    .local v8, "maxRows":I
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@5e
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v4

    #@66
    if-lez v4, :cond_1

    #@68
    .line 5040
    add-int/lit8 v8, v8, -0x1

    #@6a
    .line 5042
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@6c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6f
    move-result v4

    #@70
    if-ge v7, v4, :cond_4

    #@72
    if-ge v7, v8, :cond_4

    #@74
    .line 5043
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@79
    move-result-object v12

    #@7a
    check-cast v12, Ljava/lang/CharSequence;

    #@7c
    .line 5044
    .local v12, "str":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7f
    move-result v4

    #@80
    if-nez v4, :cond_2

    #@82
    .line 5045
    aget v4, v11, v7

    #@84
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@87
    .line 5046
    aget v4, v11, v7

    #@89
    iget-object v5, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@8b
    invoke-static {v5, v12}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@92
    .line 5047
    aget v1, v11, v7

    #@94
    .end local v1    # "onlyViewId":I
    move v4, v2

    #@95
    move v5, v2

    #@96
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@99
    .line 5048
    aget v4, v11, v7

    #@9b
    invoke-direct {p0, v0, v4, v6}, Landroid/app/Notification$InboxStyle;->handleInboxImageMargin(Landroid/widget/RemoteViews;IZ)V

    #@9e
    .line 5049
    if-eqz v6, :cond_3

    #@a0
    .line 5050
    aget v1, v11, v7

    #@a2
    .line 5054
    .restart local v1    # "onlyViewId":I
    :goto_2
    const/4 v6, 0x0

    #@a3
    .line 5056
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@a5
    goto :goto_1

    #@a6
    .line 5052
    .end local v1    # "onlyViewId":I
    :cond_3
    const/4 v1, 0x0

    #@a7
    .restart local v1    # "onlyViewId":I
    goto :goto_2

    #@a8
    .line 5058
    .end local v12    # "str":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v1, :cond_5

    #@aa
    .line 5060
    iget-object v4, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@ac
    invoke-static {v4}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@af
    move-result-object v4

    #@b0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b3
    move-result-object v4

    #@b4
    .line 5061
    const v5, 0x1050077

    #@b7
    .line 5060
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@ba
    move-result v3

    #@bb
    move v4, v2

    #@bc
    move v5, v2

    #@bd
    .line 5062
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@c0
    .line 5065
    :cond_5
    return-object v0

    #@c1
    .line 5025
    nop

    #@c2
    :array_0
    .array-data 4
        0x10203b6
        0x10203b7
        0x10203b8
        0x10203b9
        0x10203ba
        0x10203bb
        0x10203bc
    .end array-data
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 5004
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 5006
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 5007
    const-string/jumbo v0, "android.textLines"

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 5008
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@13
    const-string/jumbo v1, "android.textLines"

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@1d
    .line 5003
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4969
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 4970
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4977
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 4978
    return-object p0
.end method
