.class public final Landroid/app/search/SearchTarget$Builder;
.super Ljava/lang/Object;
.source "SearchTarget.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/search/SearchTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHidden:Z

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mLayoutType:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParentId:Ljava/lang/String;

.field private blacklist mResultType:I

.field private blacklist mScore:F

.field private blacklist mSearchAction:Landroid/app/search/SearchAction;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private blacklist mSliceUri:Landroid/net/Uri;

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "resultType"    # I
    .param p2, "layoutType"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput-object p3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    .line 375
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    .line 376
    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    .line 377
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 379
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/search/SearchTarget;
    .registers 16

    .line 501
    new-instance v0, Landroid/app/search/SearchTarget;

    iget v1, p0, Landroid/app/search/SearchTarget$Builder;->mResultType:I

    iget-object v2, p0, Landroid/app/search/SearchTarget$Builder;->mLayoutType:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/search/SearchTarget$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    iget v5, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    iget-boolean v6, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    iget-object v7, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    iget-object v10, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v11, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    iget-object v12, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v13, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V

    return-object v0
.end method

.method public whitelist setAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/app/search/SearchTarget$Builder;
    .registers 4
    .param p1, "appWidgetProviderInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .line 428
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 429
    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 430
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 431
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from appWidgetProviderInfo\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_23
    :goto_23
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 460
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mExtras:Landroid/os/Bundle;

    .line 461
    return-object p0
.end method

.method public whitelist setHidden(Z)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .param p1, "hidden"    # Z

    .line 478
    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 479
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 395
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 396
    return-object p0
.end method

.method public whitelist setParentId(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;
    .registers 3
    .param p1, "parentId"    # Ljava/lang/String;

    .line 386
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mParentId:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .param p1, "score"    # F

    .line 469
    iput p1, p0, Landroid/app/search/SearchTarget$Builder;->mScore:F

    .line 470
    return-object p0
.end method

.method public whitelist setSearchAction(Landroid/app/search/SearchAction;)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .param p1, "searchAction"    # Landroid/app/search/SearchAction;

    .line 451
    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSearchAction:Landroid/app/search/SearchAction;

    .line 452
    return-object p0
.end method

.method public whitelist setShortcutInfo(Landroid/content/pm/ShortcutInfo;)Landroid/app/search/SearchTarget$Builder;
    .registers 4
    .param p1, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 413
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 414
    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 415
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SearchTarget packageName is different from shortcut\'s packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_21
    :goto_21
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mPackageName:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public greylist setShouldHide(Z)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .param p1, "shouldHide"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    iput-boolean p1, p0, Landroid/app/search/SearchTarget$Builder;->mHidden:Z

    .line 491
    return-object p0
.end method

.method public whitelist setSliceUri(Landroid/net/Uri;)Landroid/app/search/SearchTarget$Builder;
    .registers 2
    .param p1, "sliceUri"    # Landroid/net/Uri;

    .line 442
    iput-object p1, p0, Landroid/app/search/SearchTarget$Builder;->mSliceUri:Landroid/net/Uri;

    .line 443
    return-object p0
.end method

.method public whitelist setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 404
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/search/SearchTarget$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 405
    return-object p0
.end method
