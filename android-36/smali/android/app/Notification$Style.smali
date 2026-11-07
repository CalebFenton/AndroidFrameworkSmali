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


# static fields
.field static final greylist-max-o MAX_REMOTE_INPUT_HISTORY_LINES:I = 0x3


# instance fields
.field private greylist-max-o mBigContentTitle:Ljava/lang/CharSequence;

.field protected whitelist mBuilder:Landroid/app/Notification$Builder;

.field protected greylist-max-o mSummaryText:Ljava/lang/CharSequence;

.field protected greylist-max-o mSummaryTextSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8302
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 8307
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 8290
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8413
    iget-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v0, :cond_b

    .line 8414
    const-string v0, "android.summaryText"

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8416
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_16

    .line 8417
    const-string v0, "android.title.big"

    iget-object v1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8419
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.template"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8420
    return-void
.end method

.method public abstract greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
.end method

.method public whitelist build()Landroid/app/Notification;
    .registers 2

    .line 8460
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 8461
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 3
    .param p1, "wip"    # Landroid/app/Notification;

    .line 8441
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8442
    return-object p1
.end method

.method protected whitelist checkBuilder()V
    .registers 3

    .line 8337
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_5

    .line 8340
    return-void

    .line 8338
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o displayCustomViewInline()Z
    .registers 2

    .line 8477
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .registers 2

    .line 8508
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist getStandardView(I)Landroid/widget/RemoteViews;
    .registers 4
    .param p1, "layoutId"    # I

    .line 8344
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 8345
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 8346
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 8347
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Notification$Style;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 5
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 8362
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 8364
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    .line 8365
    iget-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    iput-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 8368
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o hasSummaryInHeader()Z
    .registers 2

    .line 8469
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 8316
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 8317
    return-void
.end method

.method protected whitelist internalSetSummaryText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 8323
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 8324
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 8325
    return-void
.end method

.method public blacklist makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 8405
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 8378
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 8386
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 8395
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o purgeResources()V
    .registers 1

    .line 8448
    return-void
.end method

.method public greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 8486
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8427
    const-string v0, "android.summaryText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8428
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 8429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 8431
    :cond_11
    const-string v0, "android.title.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 8432
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 8434
    :cond_1f
    return-void
.end method

.method public whitelist setBuilder(Landroid/app/Notification$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 8328
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_f

    .line 8329
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 8330
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_f

    .line 8331
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 8334
    :cond_f
    return-void
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 8493
    return-void
.end method
