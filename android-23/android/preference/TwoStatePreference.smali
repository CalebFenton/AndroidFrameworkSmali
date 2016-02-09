.class public abstract Landroid/preference/TwoStatePreference;
.super Landroid/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/TwoStatePreference$SavedState;
    }
.end annotation


# instance fields
.field mChecked:Z

.field private mCheckedSet:Z

.field private mDisableDependentsState:Z

.field private mSummaryOff:Ljava/lang/CharSequence;

.field private mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 44
    return-void
.end method


# virtual methods
.method public getDisableDependentsState()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    #@2
    return v0
.end method

.method public getSummaryOff()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getSummaryOn()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    #@0
    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@2
    return v0
.end method

.method protected onClick()V
    .locals 2

    #@0
    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    #@3
    .line 64
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    const/4 v0, 0x0

    #@a
    .line 65
    .local v0, "newValue":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 66
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    #@17
    .line 61
    :cond_0
    return-void

    #@18
    .line 64
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x1

    #@19
    .restart local v0    # "newValue":Z
    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 243
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    const-class v2, Landroid/preference/TwoStatePreference$SavedState;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    move-object v0, p1

    #@f
    .line 249
    check-cast v0, Landroid/preference/TwoStatePreference$SavedState;

    #@11
    .line 250
    .local v0, "myState":Landroid/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 251
    iget-boolean v1, v0, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    #@1a
    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    #@1d
    .line 242
    return-void

    #@1e
    .line 245
    .end local v0    # "myState":Landroid/preference/TwoStatePreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@21
    .line 246
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 230
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 231
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 233
    return-object v1

    #@b
    .line 236
    :cond_0
    new-instance v0, Landroid/preference/TwoStatePreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Landroid/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 237
    .local v0, "myState":Landroid/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    #@13
    move-result v2

    #@14
    iput-boolean v2, v0, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    #@16
    .line 238
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 188
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@4
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    #@7
    move-result v0

    #@8
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    #@b
    .line 187
    return-void

    #@c
    .line 189
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    #@e
    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    #@0
    .prologue
    .line 77
    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    const/4 v0, 0x1

    #@5
    .line 78
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_2

    #@7
    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    #@9
    if-eqz v1, :cond_2

    #@b
    .line 75
    :cond_0
    :goto_1
    return-void

    #@c
    .line 77
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@d
    .restart local v0    # "changed":Z
    goto :goto_0

    #@e
    .line 79
    :cond_2
    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@10
    .line 80
    const/4 v1, 0x1

    #@11
    iput-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    #@13
    .line 81
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->persistBoolean(Z)Z

    #@16
    .line 82
    if-eqz v0, :cond_0

    #@18
    .line 83
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->shouldDisableDependents()Z

    #@1b
    move-result v1

    #@1c
    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    #@1f
    .line 84
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    #@22
    goto :goto_1
.end method

.method public setDisableDependentsState(Z)V
    .locals 0
    .param p1, "disableDependentsState"    # Z

    #@0
    .prologue
    .line 178
    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    #@2
    .line 177
    return-void
.end method

.method public setSummaryOff(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    #@b
    .line 148
    return-void
.end method

.method public setSummaryOff(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    #@2
    .line 139
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 140
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    #@b
    .line 137
    :cond_0
    return-void
.end method

.method public setSummaryOn(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    #@b
    .line 120
    return-void
.end method

.method public setSummaryOn(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    #@2
    .line 111
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 112
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    #@b
    .line 109
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    #@0
    .prologue
    .line 100
    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@6
    .line 101
    :goto_0
    if-nez v0, :cond_2

    #@8
    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    #@b
    move-result v1

    #@c
    :goto_1
    return v1

    #@d
    .line 100
    :cond_0
    iget-boolean v1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    const/4 v0, 0x0

    #@12
    .local v0, "shouldDisable":Z
    goto :goto_0

    #@13
    .end local v0    # "shouldDisable":Z
    :cond_1
    const/4 v0, 0x1

    #@14
    .restart local v0    # "shouldDisable":Z
    goto :goto_0

    #@15
    .line 101
    .end local v0    # "shouldDisable":Z
    :cond_2
    const/4 v1, 0x1

    #@16
    goto :goto_1
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 198
    const v4, 0x1020010

    #@3
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/widget/TextView;

    #@9
    .line 199
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_4

    #@b
    .line 200
    const/4 v3, 0x1

    #@c
    .line 201
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@e
    if-eqz v4, :cond_0

    #@10
    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    #@12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_5

    #@18
    .line 204
    :cond_0
    iget-boolean v4, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    #@1a
    if-nez v4, :cond_1

    #@1c
    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    #@1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_6

    #@24
    .line 209
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    #@26
    .line 210
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    #@29
    move-result-object v1

    #@2a
    .line 211
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_2

    #@30
    .line 212
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@33
    .line 213
    const/4 v3, 0x0

    #@34
    .line 217
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_2
    const/16 v0, 0x8

    #@36
    .line 218
    .local v0, "newVisibility":I
    if-nez v3, :cond_3

    #@38
    .line 220
    const/4 v0, 0x0

    #@39
    .line 222
    :cond_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    #@3c
    move-result v4

    #@3d
    if-eq v0, v4, :cond_4

    #@3f
    .line 223
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    #@42
    .line 196
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_4
    return-void

    #@43
    .line 202
    .restart local v3    # "useDefaultSummary":Z
    :cond_5
    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    #@45
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@48
    .line 203
    const/4 v3, 0x0

    #@49
    .line 201
    goto :goto_0

    #@4a
    .line 205
    :cond_6
    iget-object v4, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    #@4c
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@4f
    .line 206
    const/4 v3, 0x0

    #@50
    goto :goto_0
.end method
