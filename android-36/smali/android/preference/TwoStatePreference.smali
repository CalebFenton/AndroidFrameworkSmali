.class public abstract Landroid/preference/TwoStatePreference;
.super Landroid/preference/Preference;
.source "TwoStatePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/TwoStatePreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field greylist-max-o mChecked:Z

.field private greylist-max-o mCheckedSet:Z

.field private greylist-max-o mDisableDependentsState:Z

.field private greylist-max-o mSummaryOff:Ljava/lang/CharSequence;

.field private greylist-max-o mSummaryOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist getDisableDependentsState()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    return v0
.end method

.method public whitelist getSummaryOff()Ljava/lang/CharSequence;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSummaryOn()Ljava/lang/CharSequence;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist isChecked()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    return v0
.end method

.method protected whitelist onClick()V
    .registers 3

    .line 70
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 72
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 73
    .local v0, "newValue":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 74
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 76
    :cond_16
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 252
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/TwoStatePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1f

    .line 258
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/preference/TwoStatePreference$SavedState;

    .line 259
    .local v0, "myState":Landroid/preference/TwoStatePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 260
    iget-boolean v1, v0, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    return-void

    .line 254
    .end local v0    # "myState":Landroid/preference/TwoStatePreference$SavedState;
    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 255
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 239
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 240
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 242
    return-object v0

    .line 245
    :cond_b
    new-instance v1, Landroid/preference/TwoStatePreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/TwoStatePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 246
    .local v1, "myState":Landroid/preference/TwoStatePreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Landroid/preference/TwoStatePreference$SavedState;->checked:Z

    .line 247
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 196
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->getPersistedBoolean(Z)Z

    move-result v0

    goto :goto_10

    .line 197
    :cond_9
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 196
    :goto_10
    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 198
    return-void
.end method

.method public whitelist setChecked(Z)V
    .registers 5
    .param p1, "checked"    # Z

    .line 85
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 86
    .local v0, "changed":Z
    :goto_8
    if-nez v0, :cond_e

    iget-boolean v2, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    if-nez v2, :cond_21

    .line 87
    :cond_e
    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    .line 88
    iput-boolean v1, p0, Landroid/preference/TwoStatePreference;->mCheckedSet:Z

    .line 89
    invoke-virtual {p0, p1}, Landroid/preference/TwoStatePreference;->persistBoolean(Z)Z

    .line 90
    if-eqz v0, :cond_21

    .line 91
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->notifyDependencyChange(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    .line 95
    :cond_21
    return-void
.end method

.method public whitelist setDisableDependentsState(Z)V
    .registers 2
    .param p1, "disableDependentsState"    # Z

    .line 186
    iput-boolean p1, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    .line 187
    return-void
.end method

.method public whitelist setSummaryOff(I)V
    .registers 3
    .param p1, "summaryResId"    # I

    .line 157
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public whitelist setSummaryOff(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 146
    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    .line 147
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_b

    .line 148
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    .line 150
    :cond_b
    return-void
.end method

.method public whitelist setSummaryOn(I)V
    .registers 3
    .param p1, "summaryResId"    # I

    .line 129
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 130
    return-void
.end method

.method public whitelist setSummaryOn(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 118
    iput-object p1, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    .line 119
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 120
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->notifyChanged()V

    .line 122
    :cond_b
    return-void
.end method

.method public whitelist shouldDisableDependents()Z
    .registers 5

    .line 108
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mDisableDependentsState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    goto :goto_10

    :cond_9
    iget-boolean v0, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 109
    .local v0, "shouldDisable":Z
    :goto_10
    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :cond_1a
    :goto_1a
    return v1
.end method

.method greylist syncSummaryView(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .line 207
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 208
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_4f

    .line 209
    const/4 v1, 0x1

    .line 210
    .local v1, "useDefaultSummary":Z
    iget-boolean v2, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 211
    iget-object v2, p0, Landroid/preference/TwoStatePreference;->mSummaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const/4 v1, 0x0

    goto :goto_31

    .line 213
    :cond_1f
    iget-boolean v2, p0, Landroid/preference/TwoStatePreference;->mChecked:Z

    if-nez v2, :cond_31

    iget-object v2, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 214
    iget-object v2, p0, Landroid/preference/TwoStatePreference;->mSummaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    const/4 v1, 0x0

    .line 218
    :cond_31
    :goto_31
    if-eqz v1, :cond_41

    .line 219
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 220
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 221
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const/4 v1, 0x0

    .line 226
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_41
    const/16 v2, 0x8

    .line 227
    .local v2, "newVisibility":I
    if-nez v1, :cond_46

    .line 229
    const/4 v2, 0x0

    .line 231
    :cond_46
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v2, v3, :cond_4f

    .line 232
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    .end local v1    # "useDefaultSummary":Z
    .end local v2    # "newVisibility":I
    :cond_4f
    return-void
.end method
