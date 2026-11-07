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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDialog:Landroid/app/Dialog;

.field private blacklist mDialogFitsSystemWindows:Z

.field private greylist-max-o mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerSpecified:Z

.field private greylist-max-o mLayoutResId:I

.field private greylist-max-r mListView:Landroid/widget/ListView;

.field private greylist mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 120
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    const v1, 0x109011a

    iput v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    .line 122
    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->PreferenceScreen:[I

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 131
    nop

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-boolean v3, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    .line 136
    :cond_2d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    return-void
.end method

.method private greylist-max-o showDialog(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "state"    # Landroid/os/Bundle;

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 209
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    :cond_e
    nop

    .line 213
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 214
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 215
    .local v2, "childPrefScreen":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 216
    .local v3, "titleView":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 219
    iget-boolean v4, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3a

    .line 220
    iget-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFitsSystemWindows(Z)V

    .line 222
    :cond_3a
    iget-boolean v4, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    if-eqz v4, :cond_45

    .line 223
    iget-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 226
    :cond_45
    iget-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 229
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 230
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v6, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v6, v0, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 231
    .local v6, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 232
    if-eqz v3, :cond_66

    .line 233
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_66
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_80

    .line 237
    :cond_6e
    instance-of v5, v3, Landroid/widget/TextView;

    if-eqz v5, :cond_7d

    .line 238
    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_80

    .line 241
    :cond_7d
    invoke-virtual {v6, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 244
    :goto_80
    invoke-virtual {v6, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 245
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 246
    if-eqz p1, :cond_8b

    .line 247
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 251
    :cond_8b
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 253
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 254
    return-void
.end method


# virtual methods
.method public whitelist bind(Landroid/widget/ListView;)V
    .registers 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 191
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 192
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 195
    return-void
.end method

.method public whitelist getDialog()Landroid/app/Dialog;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public whitelist getRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_a

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 170
    :cond_a
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist isOnSameScreenAsChildren()Z
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onClick()V
    .registers 2

    .line 199
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_13

    goto :goto_18

    .line 203
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 204
    return-void

    .line 200
    :cond_18
    :goto_18
    return-void
.end method

.method protected whitelist onCreateRootAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 180
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 259
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 272
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_c

    .line 273
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 275
    :cond_c
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 276
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/Preference;

    if-nez v1, :cond_19

    return-void

    .line 278
    :cond_19
    move-object v1, v0

    check-cast v1, Landroid/preference/Preference;

    .line 279
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 280
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 303
    if-eqz p1, :cond_23

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_23

    .line 309
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 310
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_22

    .line 312
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 314
    :cond_22
    return-void

    .line 305
    .end local v0    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_23
    :goto_23
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 289
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 290
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 291
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1e

    .line 295
    :cond_f
    new-instance v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 296
    .local v2, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 297
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 298
    return-object v2

    .line 292
    .end local v2    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public blacklist setDialogFitsSystemWindows(Z)V
    .registers 2
    .param p1, "dialogFitsSystemWindows"    # Z

    .line 148
    iput-boolean p1, p0, Landroid/preference/PreferenceScreen;->mDialogFitsSystemWindows:Z

    .line 149
    return-void
.end method
