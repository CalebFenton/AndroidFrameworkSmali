.class public Lcom/android/internal/preference/YesNoPreference;
.super Landroid/preference/DialogPreference;
.source "YesNoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/preference/YesNoPreference$SavedState;
    }
.end annotation


# instance fields
.field private mWasPositiveResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 48
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 44
    const v0, 0x1010090

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 40
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/preference/YesNoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 39
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
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@3
    .line 35
    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    #@0
    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    #@2
    return v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    #@0
    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    #@3
    .line 55
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->callChangeListener(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    #@10
    .line 52
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 85
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
    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v1

    #@4
    const-class v2, Lcom/android/internal/preference/YesNoPreference$SavedState;

    #@6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 116
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@f
    .line 117
    return-void

    #@10
    :cond_0
    move-object v0, p1

    #@11
    .line 120
    check-cast v0, Lcom/android/internal/preference/YesNoPreference$SavedState;

    #@13
    .line 121
    .local v0, "myState":Lcom/android/internal/preference/YesNoPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/preference/YesNoPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@16
    move-result-object v1

    #@17
    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@1a
    .line 122
    iget-boolean v1, v0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    #@1c
    invoke-virtual {p0, v1}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    #@1f
    .line 113
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 101
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 102
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/preference/YesNoPreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 104
    return-object v1

    #@b
    .line 107
    :cond_0
    new-instance v0, Lcom/android/internal/preference/YesNoPreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Lcom/android/internal/preference/YesNoPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 108
    .local v0, "myState":Lcom/android/internal/preference/YesNoPreference$SavedState;
    invoke-virtual {p0}, Lcom/android/internal/preference/YesNoPreference;->getValue()Z

    #@13
    move-result v2

    #@14
    iput-boolean v2, v0, Lcom/android/internal/preference/YesNoPreference$SavedState;->wasPositiveResult:Z

    #@16
    .line 109
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 90
    if-eqz p1, :cond_0

    #@2
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    #@4
    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->getPersistedBoolean(Z)Z

    #@7
    move-result v0

    #@8
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->setValue(Z)V

    #@b
    .line 89
    return-void

    #@c
    .line 91
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

.method public setValue(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    #@2
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/internal/preference/YesNoPreference;->persistBoolean(Z)Z

    #@5
    .line 71
    if-eqz p1, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/preference/YesNoPreference;->notifyDependencyChange(Z)V

    #@b
    .line 66
    return-void

    #@c
    .line 71
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    #@0
    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/internal/preference/YesNoPreference;->mWasPositiveResult:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/preference/DialogPreference;->shouldDisableDependents()Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0
.end method
