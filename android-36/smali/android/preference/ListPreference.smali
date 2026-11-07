.class public Landroid/preference/ListPreference;
.super Landroid/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ListPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist mClickedDialogEntryIndex:I

.field private greylist-max-o mEntries:[Ljava/lang/CharSequence;

.field private greylist-max-o mEntryValues:[Ljava/lang/CharSequence;

.field private greylist-max-o mSummary:Ljava/lang/String;

.field private greylist-max-o mValue:Ljava/lang/String;

.field private greylist-max-o mValueSet:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmClickedDialogEntryIndex(Landroid/preference/ListPreference;I)V
    .registers 2

    iput p1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 79
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    return-void
.end method

.method private greylist-max-o getValueIndex()I
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 239
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 240
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 241
    iget-object v1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 242
    return v0

    .line 240
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 246
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getEntry()Ljava/lang/CharSequence;
    .registers 3

    .line 228
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 229
    .local v0, "index":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public whitelist getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 4

    .line 174
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 175
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 176
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 178
    :cond_d
    iget-object v1, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_14

    const-string v2, ""

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getValue()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 4
    .param p1, "positiveResult"    # Z

    .line 287
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 289
    if-eqz p1, :cond_20

    iget v0, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v0, :cond_20

    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    .line 290
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 292
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 295
    .end local v0    # "value":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 299
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 255
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 257
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_22

    .line 262
    invoke-direct {p0}, Landroid/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 263
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Landroid/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Landroid/preference/ListPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/ListPreference$1;-><init>(Landroid/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    return-void

    .line 258
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 322
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1f

    .line 328
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference$SavedState;

    .line 329
    .local v0, "myState":Landroid/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    iget-object v1, v0, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 331
    return-void

    .line 324
    .end local v0    # "myState":Landroid/preference/ListPreference$SavedState;
    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 325
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 309
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 310
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    return-object v0

    .line 315
    :cond_b
    new-instance v1, Landroid/preference/ListPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 316
    .local v1, "myState":Landroid/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    .line 317
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 4
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 304
    if-eqz p1, :cond_9

    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_9
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_c
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public whitelist setEntries(I)V
    .registers 3
    .param p1, "entriesResId"    # I

    .line 105
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public whitelist setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 97
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 98
    return-void
.end method

.method public whitelist setEntryValues(I)V
    .registers 3
    .param p1, "entryValuesResId"    # I

    .line 133
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method public whitelist setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .line 125
    iput-object p1, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 193
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    if-nez p1, :cond_d

    iget-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_1d

    .line 196
    :cond_d
    if-eqz p1, :cond_1d

    iget-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 197
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 199
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist setValue(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 153
    iget-object v0, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 154
    .local v0, "changed":Z
    if-nez v0, :cond_e

    iget-boolean v2, p0, Landroid/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1a

    .line 155
    :cond_e
    iput-object p1, p0, Landroid/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 156
    iput-boolean v1, p0, Landroid/preference/ListPreference;->mValueSet:Z

    .line 157
    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 158
    if-eqz v0, :cond_1a

    .line 159
    invoke-virtual {p0}, Landroid/preference/ListPreference;->notifyChanged()V

    .line 162
    :cond_1a
    return-void
.end method

.method public whitelist setValueIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 207
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 208
    iget-object v0, p0, Landroid/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    :cond_f
    return-void
.end method
