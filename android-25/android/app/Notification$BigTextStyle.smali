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
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x4

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 4515
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4522
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4523
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    #@6
    .line 4522
    return-void
.end method

.method static applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "bigTextText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const v2, 0x10203bc

    #@3
    .line 4597
    invoke-virtual {p1, v2, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@6
    .line 4599
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/16 v0, 0x8

    #@e
    .line 4598
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@11
    .line 4600
    const-string/jumbo v0, "setMaxLines"

    #@14
    invoke-static {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines(Landroid/app/Notification$Builder;)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@1b
    .line 4601
    const-string/jumbo v0, "setHasImage"

    #@1e
    invoke-static {p0}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@21
    move-result-object v1

    #@22
    invoke-static {v1}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@25
    move-result v1

    #@26
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@29
    .line 4596
    return-void

    #@2a
    .line 4599
    :cond_0
    const/4 v0, 0x0

    #@2b
    goto :goto_0
.end method

.method private static calculateMaxLines(Landroid/app/Notification$Builder;)I
    .locals 3
    .param p0, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4605
    const/16 v1, 0xd

    #@3
    .line 4606
    .local v1, "lineCount":I
    invoke-static {p0}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    if-lez v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 4607
    .local v0, "hasActions":Z
    :cond_0
    if-eqz v0, :cond_1

    #@10
    .line 4608
    const/16 v1, 0x9

    #@12
    .line 4610
    :cond_1
    return v1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4556
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4558
    const-string/jumbo v0, "android.bigText"

    #@6
    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@b
    .line 4555
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4548
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@6
    .line 4549
    return-object p0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    #@0
    .prologue
    .line 4577
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@5
    move-result-object v3

    #@6
    const-string/jumbo v4, "android.text"

    #@9
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@c
    move-result-object v2

    #@d
    .line 4578
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@12
    move-result-object v3

    #@13
    const-string/jumbo v4, "android.text"

    #@16
    const/4 v5, 0x0

    #@17
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1a
    .line 4580
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1c
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;)I

    #@1f
    move-result v3

    #@20
    invoke-virtual {p0, v3}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    #@23
    move-result-object v1

    #@24
    .line 4582
    .local v1, "contentView":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@26
    invoke-static {v3}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, "android.text"

    #@2d
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@30
    .line 4584
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@32
    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@34
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@37
    move-result-object v0

    #@38
    .line 4585
    .local v0, "bigTextText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v3

    #@3c
    if-eqz v3, :cond_0

    #@3e
    .line 4588
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@40
    invoke-static {v3, v2}, Landroid/app/Notification$Builder;->-wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@43
    move-result-object v0

    #@44
    .line 4590
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@46
    invoke-static {v3, v1, v0}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    #@49
    .line 4592
    return-object v1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4566
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4568
    const-string/jumbo v0, "android.bigText"

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    #@c
    .line 4565
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4531
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    #@7
    .line 4532
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4539
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    #@7
    .line 4540
    return-object p0
.end method
