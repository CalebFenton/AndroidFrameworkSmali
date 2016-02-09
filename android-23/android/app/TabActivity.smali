.class public Landroid/app/TabActivity;
.super Landroid/app/ActivityGroup;
.source "TabActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    #@6
    .line 57
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    #@9
    .line 59
    return-void
.end method

.method private ensureTabHost()V
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 140
    const v0, 0x10900e3

    #@7
    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->setContentView(I)V

    #@a
    .line 138
    :cond_0
    return-void
.end method


# virtual methods
.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    #@3
    .line 163
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@5
    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@2
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "childActivity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    #@7
    move-result-object v1

    #@8
    if-ne v1, p1, :cond_0

    #@a
    .line 149
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@c
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 150
    .local v0, "tabView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@12
    instance-of v1, v0, Landroid/widget/TextView;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 151
    check-cast v0, Landroid/widget/TextView;

    #@18
    .end local v0    # "tabView":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1b
    .line 146
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    #@0
    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    #@3
    .line 128
    const v0, 0x1020012

    #@6
    invoke-virtual {p0, v0}, Landroid/app/TabActivity;->findViewById(I)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/widget/TabHost;

    #@c
    iput-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@e
    .line 130
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@10
    if-nez v0, :cond_0

    #@12
    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    #@14
    .line 132
    const-string/jumbo v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    #@17
    .line 131
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 135
    :cond_0
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@1d
    invoke-virtual {p0}, Landroid/app/TabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    #@24
    .line 126
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    #@3
    .line 103
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    #@6
    .line 105
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@8
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 106
    iget-object v0, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@15
    .line 100
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 85
    invoke-direct {p0}, Landroid/app/TabActivity;->ensureTabHost()V

    #@6
    .line 86
    const-string/jumbo v1, "currentTab"

    #@9
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 87
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@f
    .line 88
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@11
    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    #@14
    .line 90
    :cond_0
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@16
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    #@19
    move-result v1

    #@1a
    if-gez v1, :cond_1

    #@1c
    .line 91
    iget-object v1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    #@1e
    if-eqz v1, :cond_2

    #@20
    .line 92
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@22
    iget-object v2, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    #@27
    .line 83
    :cond_1
    :goto_0
    return-void

    #@28
    .line 93
    :cond_2
    iget v1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    #@2a
    if-ltz v1, :cond_1

    #@2c
    .line 94
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@2e
    iget v2, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    #@30
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@33
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    .line 113
    iget-object v1, p0, Landroid/app/TabActivity;->mTabHost:Landroid/widget/TabHost;

    #@5
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 114
    .local v0, "currentTabTag":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@b
    .line 115
    const-string/jumbo v1, "currentTab"

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 111
    :cond_0
    return-void
.end method

.method public setDefaultTab(I)V
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    #@3
    .line 79
    iput p1, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    #@5
    .line 77
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 68
    iput-object p1, p0, Landroid/app/TabActivity;->mDefaultTab:Ljava/lang/String;

    #@2
    .line 69
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/app/TabActivity;->mDefaultTabIndex:I

    #@5
    .line 67
    return-void
.end method
