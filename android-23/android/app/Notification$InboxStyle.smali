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
    .line 4194
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4192
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@b
    .line 4194
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 4197
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4192
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@b
    .line 4198
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@e
    .line 4197
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/16 v10, 0x8

    #@3
    const/4 v9, 0x0

    #@4
    .line 4253
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    invoke-static {v8}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    #@9
    move-result-object v3

    #@a
    .line 4254
    .local v3, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-static {v8, v11}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@f
    .line 4256
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@11
    invoke-static {v8}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    #@14
    move-result v8

    #@15
    invoke-virtual {p0, v8}, Landroid/app/Notification$InboxStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@18
    move-result-object v0

    #@19
    .line 4258
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1b
    invoke-static {v8, v3}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    .line 4260
    const v8, 0x1020015

    #@21
    invoke-virtual {v0, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@24
    .line 4262
    const/4 v8, 0x7

    #@25
    new-array v5, v8, [I

    #@27
    .local v5, "rowIds":[I
    fill-array-data v5, :array_0

    #@2a
    .line 4266
    array-length v11, v5

    #@2b
    move v8, v9

    #@2c
    :goto_0
    if-ge v8, v11, :cond_0

    #@2e
    aget v4, v5, v8

    #@30
    .line 4267
    .local v4, "rowId":I
    invoke-virtual {v0, v4, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@33
    .line 4266
    add-int/lit8 v8, v8, 0x1

    #@35
    goto :goto_0

    #@36
    .line 4271
    .end local v4    # "rowId":I
    :cond_0
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@38
    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@43
    move-result-object v8

    #@44
    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    #@46
    const/high16 v11, 0x3f800000    # 1.0f

    #@48
    cmpl-float v8, v8, v11

    #@4a
    if-lez v8, :cond_2

    #@4c
    const/4 v2, 0x1

    #@4d
    .line 4272
    .local v2, "largeText":Z
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4f
    invoke-static {v8}, Landroid/app/Notification$Builder;->-get3(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@56
    move-result-object v8

    #@57
    .line 4273
    const v11, 0x105005c

    #@5a
    .line 4272
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@5d
    move-result v8

    #@5e
    int-to-float v7, v8

    #@5f
    .line 4274
    .local v7, "subTextSize":F
    const/4 v1, 0x0

    #@60
    .line 4275
    .local v1, "i":I
    :goto_2
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@62
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@65
    move-result v8

    #@66
    if-ge v1, v8, :cond_4

    #@68
    array-length v8, v5

    #@69
    if-ge v1, v8, :cond_4

    #@6b
    .line 4276
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v6

    #@71
    check-cast v6, Ljava/lang/CharSequence;

    #@73
    .line 4277
    .local v6, "str":Ljava/lang/CharSequence;
    if-eqz v6, :cond_1

    #@75
    const-string/jumbo v8, ""

    #@78
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v8

    #@7c
    if-eqz v8, :cond_3

    #@7e
    .line 4285
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@80
    goto :goto_2

    #@81
    .line 4271
    .end local v1    # "i":I
    .end local v2    # "largeText":Z
    .end local v6    # "str":Ljava/lang/CharSequence;
    .end local v7    # "subTextSize":F
    :cond_2
    const/4 v2, 0x0

    #@82
    .restart local v2    # "largeText":Z
    goto :goto_1

    #@83
    .line 4278
    .restart local v1    # "i":I
    .restart local v6    # "str":Ljava/lang/CharSequence;
    .restart local v7    # "subTextSize":F
    :cond_3
    aget v8, v5, v1

    #@85
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@88
    .line 4279
    aget v8, v5, v1

    #@8a
    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@8c
    invoke-static {v11, v6}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@8f
    move-result-object v11

    #@90
    invoke-virtual {v0, v8, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@93
    .line 4280
    if-eqz v2, :cond_1

    #@95
    .line 4281
    aget v8, v5, v1

    #@97
    invoke-virtual {v0, v8, v9, v7}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    #@9a
    goto :goto_3

    #@9b
    .line 4289
    .end local v6    # "str":Ljava/lang/CharSequence;
    :cond_4
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@9d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v8

    #@a1
    if-lez v8, :cond_5

    #@a3
    move v8, v9

    #@a4
    .line 4288
    :goto_4
    const v11, 0x102037a

    #@a7
    invoke-virtual {v0, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@aa
    .line 4292
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@ac
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@af
    move-result v8

    #@b0
    array-length v11, v5

    #@b1
    if-le v8, v11, :cond_6

    #@b3
    .line 4291
    :goto_5
    const v8, 0x1020379

    #@b6
    invoke-virtual {v0, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@b9
    .line 4294
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    #@bc
    .line 4296
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@be
    invoke-static {v8, v0}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    #@c1
    .line 4298
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@c3
    const v9, 0x102036d

    #@c6
    invoke-static {v8, v0, v9}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    #@c9
    .line 4300
    return-object v0

    #@ca
    :cond_5
    move v8, v10

    #@cb
    .line 4289
    goto :goto_4

    #@cc
    :cond_6
    move v9, v10

    #@cd
    .line 4292
    goto :goto_5

    #@ce
    .line 4262
    :array_0
    .array-data 4
        0x1020372
        0x1020373
        0x1020374
        0x1020375
        0x1020376
        0x1020377
        0x1020378
    .end array-data
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4230
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4232
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Ljava/lang/CharSequence;

    #@b
    .line 4233
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
    .line 4229
    return-void
.end method

.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4222
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@2
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9
    .line 4223
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4308
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9
    .line 4307
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4241
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4243
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@8
    .line 4244
    const-string/jumbo v0, "android.textLines"

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 4245
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
    .line 4240
    :cond_0
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4206
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 4207
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4214
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 4215
    return-object p0
.end method
