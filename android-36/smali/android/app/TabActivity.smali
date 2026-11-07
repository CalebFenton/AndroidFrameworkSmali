.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDefaultTab:Ljava/lang/String;

.field private greylist-max-o mDefaultTabIndex:I

.field private greylist-max-o mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 43
    return-void
.end method

.method private greylist-max-o ensureTabHost()V
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-nez v0, :cond_a

    .line 123
    const v0, 0x109015b

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->setContentView(I)V

    .line 125
    :cond_a
    return-void
.end method


# virtual methods
.method public whitelist getTabHost()Landroid/widget/TabHost;
    .registers 2

    .line 145
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 146
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public whitelist getTabWidget()Landroid/widget/TabWidget;
    .registers 2

    .line 155
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_1c

    .line 132
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_1c

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    .line 134
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .end local v0    # "tabView":Landroid/view/View;
    :cond_1c
    return-void
.end method

.method public whitelist onContentChanged()V
    .registers 3

    .line 110
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 111
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 113
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1c

    .line 118
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 119
    return-void

    .line 114
    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 88
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 89
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 91
    :cond_15
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    .line 69
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 71
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 73
    :cond_13
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_32

    .line 74
    iget-object v1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 75
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_32

    .line 76
    :cond_27
    iget v1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_32

    .line 77
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 80
    :cond_32
    :goto_32
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "currentTabTag":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 98
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_10
    return-void
.end method

.method public whitelist setDefaultTab(I)V
    .registers 3
    .param p1, "index"    # I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 62
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 63
    return-void
.end method

.method public whitelist setDefaultTab(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    .line 53
    return-void
.end method
