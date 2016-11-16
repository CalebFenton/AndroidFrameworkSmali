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
.method static synthetic -get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4159
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@6
    .line 4164
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@9
    .line 4153
    return-void
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4252
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4253
    const-string/jumbo v0, "android.summaryText"

    #@7
    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@c
    .line 4255
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 4256
    const-string/jumbo v0, "android.title.big"

    #@13
    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@18
    .line 4258
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
    .line 4251
    return-void
.end method

.method public build()Landroid/app/Notification;
    .locals 1

    #@0
    .prologue
    .line 4296
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    #@3
    .line 4297
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 1
    .param p1, "wip"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4280
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    invoke-virtual {p0, v0}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@5
    .line 4281
    return-object p1
.end method

.method protected checkBuilder()V
    .locals 2

    #@0
    .prologue
    .line 4194
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 4195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "Style requires a valid Builder object"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 4193
    :cond_0
    return-void
.end method

.method public displayCustomViewInline()Z
    .locals 1

    #@0
    .prologue
    .line 4322
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "layoutId"    # I

    #@0
    .prologue
    const v4, 0x10203c6

    #@3
    .line 4200
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    #@6
    .line 4204
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@8
    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@b
    move-result-object v2

    #@c
    const-string/jumbo v3, "android.title"

    #@f
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@12
    move-result-object v1

    #@13
    .line 4205
    .local v1, "oldBuilderContentTitle":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 4206
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@19
    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@1b
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@1e
    .line 4209
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@20
    invoke-static {v2, p1}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    #@23
    move-result-object v0

    #@24
    .line 4211
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@26
    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;

    #@29
    move-result-object v2

    #@2a
    const-string/jumbo v3, "android.title"

    #@2d
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@30
    .line 4213
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@32
    if-eqz v2, :cond_1

    #@34
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@36
    const-string/jumbo v3, ""

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v2

    #@3d
    if-eqz v2, :cond_1

    #@3f
    .line 4214
    const/16 v2, 0x8

    #@41
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@44
    .line 4219
    :goto_0
    return-object v0

    #@45
    .line 4216
    :cond_1
    const/4 v2, 0x0

    #@46
    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@49
    goto :goto_0
.end method

.method protected hasProgress()Z
    .locals 1

    #@0
    .prologue
    .line 4306
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasSummaryInHeader()Z
    .locals 1

    #@0
    .prologue
    .line 4314
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4173
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@2
    .line 4172
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4180
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@2
    .line 4181
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@5
    .line 4179
    return-void
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 4236
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 4228
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 4244
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public purgeResources()V
    .locals 0

    #@0
    .prologue
    .line 4287
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4266
    const-string/jumbo v0, "android.summaryText"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 4267
    const-string/jumbo v0, "android.summaryText"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@12
    .line 4268
    const/4 v0, 0x1

    #@13
    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@15
    .line 4270
    :cond_0
    const-string/jumbo v0, "android.title.big"

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 4271
    const-string/jumbo v0, "android.title.big"

    #@21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    #@27
    .line 4265
    :cond_1
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    #@0
    .prologue
    .line 4185
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 4186
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@6
    .line 4187
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 4188
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@f
    .line 4184
    :cond_0
    return-void
.end method
