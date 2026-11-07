.class public Landroid/preference/MultiCheckPreference;
.super Landroid/preference/DialogPreference;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MultiCheckPreference$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mEntries:[Ljava/lang/CharSequence;

.field private greylist-max-o mEntryValues:[Ljava/lang/String;

.field private greylist-max-o mOrigValues:[Z

.field private greylist-max-o mSetValues:[Z

.field private greylist-max-o mSummary:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSetValues(Landroid/preference/MultiCheckPreference;)[Z
    .registers 1

    iget-object p0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sget-object v0, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 59
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    .line 60
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 62
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method

.method private greylist-max-o setEntryValuesCS([Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    .line 143
    if-eqz p1, :cond_1c

    .line 144
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 146
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 149
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public greylist-max-o findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 238
    if-eqz p1, :cond_1b

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 239
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 240
    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 241
    return v0

    .line 239
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 245
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public greylist-max-o getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getEntryValues()[Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 199
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 201
    :cond_9
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getValue(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 164
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public greylist-max-o getValues()[Z
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected whitelist onDialogClosed(Z)V
    .registers 6
    .param p1, "positiveResult"    # Z

    .line 269
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 271
    if-eqz p1, :cond_10

    .line 272
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 273
    return-void

    .line 276
    :cond_10
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    return-void
.end method

.method protected whitelist onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .line 281
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 252
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 257
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 258
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    new-instance v2, Landroid/preference/MultiCheckPreference$1;

    invoke-direct {v2, p0}, Landroid/preference/MultiCheckPreference$1;-><init>(Landroid/preference/MultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    return-void

    .line 253
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 303
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Landroid/os/Parcelable;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1f

    .line 309
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/preference/MultiCheckPreference$SavedState;

    .line 310
    .local v0, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/MultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    iget-object v1, v0, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, v1}, Landroid/preference/MultiCheckPreference;->setValues([Z)V

    .line 312
    return-void

    .line 305
    .end local v0    # "myState":Landroid/preference/MultiCheckPreference$SavedState;
    :cond_1f
    :goto_1f
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 290
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 291
    .local v0, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 293
    return-object v0

    .line 296
    :cond_b
    new-instance v1, Landroid/preference/MultiCheckPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 297
    .local v1, "myState":Landroid/preference/MultiCheckPreference$SavedState;
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v2

    iput-object v2, v1, Landroid/preference/MultiCheckPreference$SavedState;->values:[Z

    .line 298
    return-object v1
.end method

.method protected whitelist onSetInitialValue(ZLjava/lang/Object;)V
    .registers 3
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 286
    return-void
.end method

.method public greylist-max-o setEntries(I)V
    .registers 3
    .param p1, "entriesResId"    # I

    .line 108
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public greylist-max-o setEntries([Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .line 98
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 99
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    .line 100
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 101
    return-void
.end method

.method public greylist-max-o setEntryValues(I)V
    .registers 3
    .param p1, "entryValuesResId"    # I

    .line 138
    invoke-virtual {p0}, Landroid/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public greylist-max-o setEntryValues([Ljava/lang/String;)V
    .registers 4
    .param p1, "entryValues"    # [Ljava/lang/String;

    .line 128
    iput-object p1, p0, Landroid/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 129
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 130
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 131
    return-void
.end method

.method public whitelist setSummary(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .line 216
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    if-nez p1, :cond_d

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_1d

    .line 219
    :cond_d
    if-eqz p1, :cond_1d

    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 220
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 222
    :cond_1d
    :goto_1d
    return-void
.end method

.method public greylist-max-o setValue(IZ)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "state"    # Z

    .line 171
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 172
    return-void
.end method

.method public greylist-max-o setValues([Z)V
    .registers 6
    .param p1, "values"    # [Z

    .line 178
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_21

    .line 179
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 180
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 181
    if-eqz p1, :cond_21

    .line 182
    iget-object v0, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    .line 183
    array-length v2, p1

    iget-object v3, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_1b

    array-length v2, p1

    goto :goto_1e

    :cond_1b
    iget-object v2, p0, Landroid/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    .line 182
    :goto_1e
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_21
    return-void
.end method
