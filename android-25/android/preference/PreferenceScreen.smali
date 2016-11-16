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

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mDividerSpecified:Z

.field private mLayoutResId:I

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const v5, 0x101008b

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 107
    invoke-direct {p0, p1, p2, v5}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@8
    .line 98
    const v1, 0x10900b6

    #@b
    iput v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    #@d
    .line 110
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceScreen:[I

    #@f
    .line 109
    const/4 v2, 0x0

    #@10
    invoke-virtual {p1, v2, v1, v5, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@13
    move-result-object v0

    #@14
    .line 116
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    #@16
    .line 114
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@19
    move-result v1

    #@1a
    iput v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    #@1c
    .line 117
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_0

    #@22
    .line 119
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@25
    move-result-object v1

    #@26
    .line 118
    iput-object v1, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    #@28
    .line 120
    iput-boolean v4, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    #@2a
    .line 123
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@2d
    .line 106
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    .line 183
    .local v1, "context":Landroid/content/Context;
    iget-object v6, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@7
    if-eqz v6, :cond_0

    #@9
    .line 184
    iget-object v6, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@b
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@e
    .line 188
    :cond_0
    const-string/jumbo v6, "layout_inflater"

    #@11
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .line 187
    check-cast v3, Landroid/view/LayoutInflater;

    #@17
    .line 189
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget v6, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    #@19
    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@1c
    move-result-object v0

    #@1d
    .line 190
    .local v0, "childPrefScreen":Landroid/view/View;
    const v6, 0x1020016

    #@20
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@23
    move-result-object v5

    #@24
    .line 191
    .local v5, "titleView":Landroid/view/View;
    const v6, 0x102000a

    #@27
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@2a
    move-result-object v6

    #@2b
    check-cast v6, Landroid/widget/ListView;

    #@2d
    iput-object v6, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@2f
    .line 192
    iget-boolean v6, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    #@31
    if-eqz v6, :cond_1

    #@33
    .line 193
    iget-object v6, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@35
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    #@37
    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    #@3a
    .line 196
    :cond_1
    iget-object v6, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    #@3c
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    #@3f
    .line 199
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    #@42
    move-result-object v4

    #@43
    .line 200
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    #@45
    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    #@48
    move-result v6

    #@49
    invoke-direct {v2, v1, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@4c
    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@4e
    .line 201
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_4

    #@54
    .line 202
    if-eqz v5, :cond_2

    #@56
    .line 203
    const/16 v6, 0x8

    #@58
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    #@5b
    .line 205
    :cond_2
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    #@5e
    move-result-object v6

    #@5f
    const/4 v7, 0x1

    #@60
    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    #@63
    .line 214
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #@66
    .line 215
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    #@69
    .line 216
    if-eqz p1, :cond_3

    #@6b
    .line 217
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    #@6e
    .line 221
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@71
    move-result-object v6

    #@72
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    #@75
    .line 223
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    #@78
    .line 181
    return-void

    #@79
    .line 207
    :cond_4
    instance-of v6, v5, Landroid/widget/TextView;

    #@7b
    if-eqz v6, :cond_5

    #@7d
    move-object v6, v5

    #@7e
    .line 208
    check-cast v6, Landroid/widget/TextView;

    #@80
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@83
    .line 209
    const/4 v6, 0x0

    #@84
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    #@87
    goto :goto_0

    #@88
    .line 211
    :cond_5
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    #@8b
    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    #@0
    .prologue
    .line 166
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@3
    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@a
    .line 169
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    #@d
    .line 165
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 142
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@a
    .line 145
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    #@c
    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    #@0
    .prologue
    .line 254
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
    .line 174
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
    .line 175
    :cond_0
    return-void

    #@e
    .line 174
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 178
    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    #@17
    .line 173
    return-void
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    #@0
    .prologue
    .line 155
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
    .line 227
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@3
    .line 228
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    #@a
    .line 226
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
    .line 242
    instance-of v2, p1, Landroid/widget/ListView;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 243
    check-cast p1, Landroid/widget/ListView;

    #@6
    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    #@9
    move-result v2

    #@a
    sub-int/2addr p3, v2

    #@b
    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 246
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
    .line 248
    check-cast v1, Landroid/preference/Preference;

    #@1b
    .line 249
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    #@1e
    .line 240
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 273
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
    .line 279
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    #@11
    .line 280
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 281
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 282
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@1e
    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    #@21
    .line 272
    :cond_0
    return-void

    #@22
    .line 275
    .end local v0    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@25
    .line 276
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    #@0
    .prologue
    .line 259
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v2

    #@4
    .line 260
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    #@6
    .line 261
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 265
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    #@10
    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@13
    .line 266
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    #@14
    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    #@16
    .line 267
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    #@19
    move-result-object v3

    #@1a
    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    #@1c
    .line 268
    return-object v1

    #@1d
    .line 262
    .end local v1    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_0
    return-object v2
.end method
