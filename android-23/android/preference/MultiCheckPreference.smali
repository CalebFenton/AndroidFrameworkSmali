.class public Landroid/preference/MultiCheckPreference;
.super Landroid/preference/DialogPreference;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/preference/MultiCheckPreference;)[Z
    .locals 1

    #@0
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 73
    const v0, 0x1010091

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 50
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    #@6
    .line 49
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@10
    .line 52
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 53
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@16
    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    #@19
    .line 56
    :cond_0
    const/4 v1, 0x1

    #@1a
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {p0, v1}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    #@21
    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    #@26
    .line 62
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@29
    move-result-object v0

    #@2a
    .line 64
    const/4 v1, 0x7

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@31
    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@34
    .line 46
    return-void
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 135
    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    #@4
    .line 136
    if-eqz p1, :cond_0

    #@6
    .line 137
    array-length v1, p1

    #@7
    new-array v1, v1, [Ljava/lang/String;

    #@9
    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@b
    .line 138
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@d
    if-ge v0, v1, :cond_0

    #@f
    .line 139
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@11
    aget-object v2, p1, v0

    #@13
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    aput-object v2, v1, v0

    #@19
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 134
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    if-eqz p1, :cond_1

    #@2
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 232
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@8
    array-length v1, v1

    #@9
    add-int/lit8 v0, v1, -0x1

    #@b
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@d
    .line 233
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@f
    aget-object v1, v1, v0

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 234
    return v0

    #@18
    .line 232
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 238
    .end local v0    # "i":I
    :cond_1
    const/4 v1, -0x1

    #@1c
    return v1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 192
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 194
    :cond_0
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@b
    return-object v0
.end method

.method public getValue(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method public getValues()[Z
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@2
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 262
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    #@4
    .line 264
    if-eqz p1, :cond_0

    #@6
    .line 265
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 266
    return-void

    #@11
    .line 269
    :cond_0
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    #@13
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@15
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@17
    array-length v2, v2

    #@18
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@1b
    .line 261
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    #@0
    .prologue
    .line 274
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    #@0
    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    #@3
    .line 245
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@9
    if-nez v0, :cond_1

    #@b
    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    .line 247
    const-string/jumbo v1, "ListPreference requires an entries array and an entryValues array."

    #@10
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 250
    :cond_1
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@16
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@18
    array-length v1, v1

    #@19
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    #@1f
    .line 251
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@21
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@23
    .line 252
    new-instance v2, Landroid/preference/MultiCheckPreference$1;

    #@25
    invoke-direct {v2, p0}, Landroid/preference/MultiCheckPreference$1;-><init>(Landroid/preference/MultiCheckPreference;)V

    #@28
    .line 251
    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    #@2b
    .line 242
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 296
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    const-class v2, Landroid/preference/MultiCheckPreference$SavedState;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    move-object v0, p1

    #@f
    .line 302
    check-cast v0, Landroid/preference/MultiCheckPreference$SavedState;

    #@11
    .line 303
    .local v0, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    #@14
    move-result-object v1

    #@15
    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@18
    .line 304
    iget-object v1, v0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    #@1a
    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    #@1d
    .line 295
    return-void

    #@1e
    .line 298
    .end local v0    # "myState":Landroid/preference/MultiCheckPreference$SavedState;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    #@21
    .line 299
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    #@0
    .prologue
    .line 283
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    #@3
    move-result-object v1

    #@4
    .line 284
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->isPersistent()Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 286
    return-object v1

    #@b
    .line 289
    :cond_0
    new-instance v0, Landroid/preference/MultiCheckPreference$SavedState;

    #@d
    invoke-direct {v0, v1}, Landroid/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    #@10
    .line 290
    .local v0, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    #@13
    move-result-object v2

    #@14
    iput-object v2, v0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    #@16
    .line 291
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 278
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    #@f
    .line 100
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 91
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    #@2
    .line 92
    array-length v0, p1

    #@3
    new-array v0, v0, [Z

    #@5
    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@7
    .line 93
    array-length v0, p1

    #@8
    new-array v0, v0, [Z

    #@a
    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    #@c
    .line 90
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    #@0
    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    #@f
    .line 130
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "entryValues"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 121
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    #@3
    .line 122
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    #@8
    .line 123
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    #@a
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    #@d
    .line 120
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 209
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    #@4
    .line 210
    if-nez p1, :cond_1

    #@6
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 211
    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@c
    .line 208
    :cond_0
    :goto_0
    return-void

    #@d
    .line 212
    :cond_1
    if-eqz p1, :cond_0

    #@f
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_0

    #@17
    .line 213
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    #@1d
    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "state"    # Z

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@2
    aput-boolean p2, v0, p1

    #@4
    .line 163
    return-void
.end method

.method public setValues([Z)V
    .locals 4
    .param p1, "values"    # [Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 171
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 172
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@7
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    #@a
    .line 173
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    #@c
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    #@f
    .line 174
    if-eqz p1, :cond_0

    #@11
    .line 175
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@13
    .line 176
    array-length v0, p1

    #@14
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@16
    array-length v2, v2

    #@17
    if-ge v0, v2, :cond_1

    #@19
    array-length v0, p1

    #@1a
    .line 175
    :goto_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@1d
    .line 170
    :cond_0
    return-void

    #@1e
    .line 176
    :cond_1
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    #@20
    array-length v0, v0

    #@21
    goto :goto_0
.end method
