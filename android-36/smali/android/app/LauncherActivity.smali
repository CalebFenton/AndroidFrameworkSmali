.class public abstract Landroid/app/LauncherActivity;
.super Landroid/app/ListActivity;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LauncherActivity$IconResizer;,
        Landroid/app/LauncherActivity$ActivityAdapter;,
        Landroid/app/LauncherActivity$ListItem;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mIconResizer:Landroid/app/LauncherActivity$IconResizer;

.field greylist-max-o mIntent:Landroid/content/Intent;

.field greylist-max-o mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private greylist-max-o updateAlertTitle()V
    .registers 3

    .line 372
    const v0, 0x1020201

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    .local v0, "alertTitle":Landroid/widget/TextView;
    if-eqz v0, :cond_12

    .line 374
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_12
    return-void
.end method

.method private greylist-max-o updateButtonText()V
    .registers 3

    .line 379
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 380
    .local v0, "cancelButton":Landroid/widget/Button;
    if-eqz v0, :cond_13

    .line 381
    new-instance v1, Landroid/app/LauncherActivity$1;

    invoke-direct {v1, p0}, Landroid/app/LauncherActivity$1;-><init>(Landroid/app/LauncherActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    :cond_13
    return-void
.end method


# virtual methods
.method protected whitelist getTargetIntent()Landroid/content/Intent;
    .registers 2

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    return-object v0
.end method

.method protected whitelist intentForPosition(I)Landroid/content/Intent;
    .registers 4
    .param p1, "position"    # I

    .line 421
    iget-object v0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 422
    .local v0, "adapter":Landroid/app/LauncherActivity$ActivityAdapter;
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist itemForPosition(I)Landroid/app/LauncherActivity$ListItem;
    .registers 4
    .param p1, "position"    # I

    .line 431
    iget-object v0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/app/LauncherActivity$ActivityAdapter;

    .line 432
    .local v0, "adapter":Landroid/app/LauncherActivity$ActivityAdapter;
    invoke-virtual {v0, p1}, Landroid/app/LauncherActivity$ActivityAdapter;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v1

    return-object v1
.end method

.method public whitelist makeListItems()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->onSortResultList(Ljava/util/List;)V

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 468
    .local v2, "listSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_2d

    .line 469
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 470
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/app/LauncherActivity$ListItem;

    iget-object v6, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Landroid/app/LauncherActivity$ListItem;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/app/LauncherActivity$IconResizer;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 473
    .end local v3    # "i":I
    :cond_2d
    return-object v1
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 344
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 348
    iget-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 349
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->requestWindowFeature(I)Z

    .line 350
    invoke-virtual {p0, v2}, Landroid/app/LauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 352
    :cond_1b
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->onSetContentView()V

    .line 354
    new-instance v0, Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {v0, p0}, Landroid/app/LauncherActivity$IconResizer;-><init>(Landroid/app/LauncherActivity;)V

    iput-object v0, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    .line 357
    iget-object v0, p0, Landroid/app/LauncherActivity;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 358
    new-instance v0, Landroid/app/LauncherActivity$ActivityAdapter;

    iget-object v3, p0, Landroid/app/LauncherActivity;->mIconResizer:Landroid/app/LauncherActivity$IconResizer;

    invoke-direct {v0, p0, v3}, Landroid/app/LauncherActivity$ActivityAdapter;-><init>(Landroid/app/LauncherActivity;Landroid/app/LauncherActivity$IconResizer;)V

    iput-object v0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 360
    iget-object v0, p0, Landroid/app/LauncherActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 361
    invoke-virtual {p0}, Landroid/app/LauncherActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 363
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    .line 364
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateButtonText()V

    .line 366
    iget-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 369
    :cond_5d
    return-void
.end method

.method protected greylist-max-o onEvaluateShowIcons()Z
    .registers 2

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 7
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 411
    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 412
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 413
    return-void
.end method

.method protected whitelist onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onSetContentView()V
    .registers 2

    .line 406
    const v0, 0x109002a

    invoke-virtual {p0, v0}, Landroid/app/LauncherActivity;->setContentView(I)V

    .line 407
    return-void
.end method

.method protected greylist-max-o onSortResultList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v1, p0, Landroid/app/LauncherActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 456
    return-void
.end method

.method public whitelist setTitle(I)V
    .registers 2
    .param p1, "titleId"    # I

    .line 397
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(I)V

    .line 398
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    .line 399
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 391
    invoke-super {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    invoke-direct {p0}, Landroid/app/LauncherActivity;->updateAlertTitle()V

    .line 393
    return-void
.end method
