.class public Landroid/preference/EditTextPreference;
.super Landroid/preference/DialogPreference;
.source "EditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/EditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 79
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 75
    const v0, 0x1010092

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 56
    new-instance v0, Landroid/widget/EditText;

    #@5
    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@8
    iput-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@a
    .line 59
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@c
    const v1, 0x1020003

    #@f
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    #@12
    .line 67
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    #@18
    .line 53
    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    #@0
    .prologue
    .line 179
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "dialogView"    # Landroid/view/View;
    .param p2, "editText"    # Landroid/widget/EditText;

    #@0
    .prologue
    .line 132
    const v1, 0x102038c

    #@3
    .line 131
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/ViewGroup;

    #@9
    .line 133
    .local v0, "container":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    #@b
    .line 134
    const/4 v1, -0x1

    #@c
    .line 135
    const/4 v2, -0x2

    #@d
    .line 134
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    #@10
    .line 130
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    #@3
    .line 113
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@5
    .line 114
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@c
    .line 116
    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    #@f
    move-result-object v1

    #@10
    .line 117
    .local v1, "oldParent":Landroid/view/ViewParent;
    if-eq v1, p1, :cond_1

    #@12
    .line 118
    if-eqz v1, :cond_0

    #@14
    .line 119
    check-cast v1, Landroid/view/ViewGroup;

    #@16
    .end local v1    # "oldParent":Landroid/view/ViewParent;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@19
    .line 121
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/preference/EditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    #@1c
    .line 110
    :cond_1
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .param p1, "positiveResult"    # Z

    #@0
    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    #@3
    .line 143
    if-eqz p1, :cond_0

    #@5
    .line 144
    iget-object v1, p0, Landroid/preference/EditTextPreference;->mEditText:Landroid/widget/EditText;

    #@7
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 145
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 146
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    #@18
    .line 140
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 153
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 197
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    const-class v2, Landroid/preference/EditTextPreference$SavedState;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    move-object v0, p1

    #@f
    .line 203
    check-cast v0, Landroid/preference/EditTextPreference$SavedState;

    #@11
    .line 204
    .local v0, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 205
    iget-object v1, v0, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    #@1a
    invoke-virtual {p0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    #@1d
    .line 196
    return-void

    #@1e
    .line 199
    .end local v0    # "myState":Landroid/preference/EditTextPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@21
    .line 200
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 185
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 187
    return-object v1

    #@b
    .line 190
    :cond_0
    new-instance v0, Landroid/preference/EditTextPreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Landroid/preference/EditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 191
    .local v0, "myState":Landroid/preference/EditTextPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    iput-object v2, v0, Landroid/preference/EditTextPreference$SavedState;->text:Ljava/lang/String;

    #@16
    .line 192
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 158
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    #@4
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    #@b
    .line 157
    return-void

    #@c
    .line 158
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    #@e
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->shouldDisableDependents()Z

    #@3
    move-result v1

    #@4
    .line 90
    .local v1, "wasBlocking":Z
    iput-object p1, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    #@6
    .line 92
    invoke-virtual {p0, p1}, Landroid/preference/EditTextPreference;->persistString(Ljava/lang/String;)Z

    #@9
    .line 94
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->shouldDisableDependents()Z

    #@c
    move-result v0

    #@d
    .line 95
    .local v0, "isBlocking":Z
    if-eq v0, v1, :cond_0

    #@f
    .line 96
    invoke-virtual {p0, v0}, Landroid/preference/EditTextPreference;->notifyDependencyChange(Z)V

    #@12
    .line 87
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/preference/EditTextPreference;->mText:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method
