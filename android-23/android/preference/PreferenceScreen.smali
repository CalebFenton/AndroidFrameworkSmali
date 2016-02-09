.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 100
    const v0, 0x101008b

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 99
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 159
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    .line 160
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 161
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@b
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@e
    .line 165
    :cond_0
    const-string/jumbo v5, "layout_inflater"

    #@11
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 164
    check-cast v3, Landroid/view/LayoutInflater;

    #@17
    .line 167
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x10900af

    #@1a
    .line 166
    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1d
    move-result-object v0

    #@1e
    .line 168
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    #@21
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@24
    move-result-object v5

    #@25
    check-cast v5, Landroid/widget/ListView;

    #@27
    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@29
    .line 169
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@2b
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    #@2e
    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    #@31
    move-result-object v4

    #@32
    .line 173
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    #@34
    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    #@37
    move-result v5

    #@38
    invoke-direct {v2, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@3b
    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@3d
    .line 174
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_2

    #@43
    .line 175
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@46
    move-result-object v5

    #@47
    const/4 v6, 0x1

    #@48
    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    #@4b
    .line 179
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@4e
    .line 180
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@51
    .line 181
    if-eqz p1, :cond_1

    #@53
    .line 182
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@56
    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    #@5d
    .line 188
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    #@60
    .line 158
    return-void

    #@61
    .line 177
    :cond_2
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    #@64
    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    #@0
    .prologue
    .line 143
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@3
    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@a
    .line 146
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    #@d
    .line 142
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 119
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@a
    .line 122
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@c
    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    #@0
    .prologue
    .line 219
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onClick()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    if-nez v0, :cond_0

    #@7
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 152
    :cond_0
    return-void

    #@e
    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 155
    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    #@17
    .line 150
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 132
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    #@2
    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    #@5
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    #@0
    .prologue
    .line 192
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@3
    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    #@a
    .line 191
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 207
    instance-of v2, p1, Landroid/widget/ListView;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 208
    check-cast p1, Landroid/widget/ListView;

    #@6
    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@9
    move-result v2

    #@a
    sub-int/2addr p3, v2

    #@b
    .line 210
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 211
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    #@15
    if-nez v2, :cond_1

    #@17
    return-void

    #@18
    :cond_1
    move-object v1, v0

    #@19
    .line 213
    check-cast v1, Landroid/preference/Preference;

    #@1b
    .line 214
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    #@1e
    .line 205
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 238
    if-eqz p1, :cond_1

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    move-object v0, p1

    #@f
    .line 244
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    #@11
    .line 245
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 246
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 247
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@1e
    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    #@21
    .line 237
    :cond_0
    return-void

    #@22
    .line 240
    .end local v0    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@25
    .line 241
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 224
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v2

    #@4
    .line 225
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@6
    .line 226
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 230
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    #@10
    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@13
    .line 231
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    #@14
    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    #@16
    .line 232
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@1c
    .line 233
    return-object v1

    #@1d
    .line 227
    .end local v1    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_0
    return-object v2
.end method
